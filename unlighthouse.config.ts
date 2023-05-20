export default {
    puppeteerOptions: {
        args: ["--no-sandbox"],
    },
    server: {
        open: false,
    },
    // In case you're proxying the frontend
    // serverUrl: "http:/<site>/",
    // clientUrl: "http://<site>/",
    // apiUrl: "http://<site>/api",
    // websocketUrl: "ws:///<site>/api/ws",
}
