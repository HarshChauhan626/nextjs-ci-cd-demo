module.exports = {
    apps: [
      {
        name: 'mynextjsapp', // Change this to your app name
        script: 'npm',
        args: 'start',
        interpreter: 'none',
        autorestart: true,
        watch: false,
        max_memory_restart: '1G',
        env: {
          NODE_ENV: 'production',
          PORT: 3000, // Change this to your desired port
        },
      },
    ],
  };
  