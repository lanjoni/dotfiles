import type { ExtensionAPI } from "@mariozechner/pi-coding-agent";

export default function exitCommandExtension(pi: ExtensionAPI) {
	pi.registerCommand("exit", {
		description: "Exit pi (alias for /quit)",
		handler: async (_args, ctx) => {
			ctx.ui.notify("Goodbye!", "info");
			// Gracefully shutdown pi
			ctx.shutdown();
		},
	});
}
