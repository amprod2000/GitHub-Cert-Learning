import { Octokit, App } from "octokit";

console.log(`TOKEN: ${process.env.GH_TOKEN}`)

const octokit = new Octokit({
    auth: process.env.GH_TOKEN
  })

octokit.request('POST /repos/{owner}/{repo}/git/refs', {
    owner: 'amprod2000',
    repo: 'GitHub-Cert-Learning',
    ref: 'refs/heads/sdksjs',
    sha: '4124f595703f73aab2e882916ad841be1de8713c',
    headers: {
      'X-GitHub-Api-Version': '2022-11-28'
    }
  })

// Install Octokit: npm i octokit