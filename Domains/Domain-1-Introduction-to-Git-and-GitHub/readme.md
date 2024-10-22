# Domain 1: Introduction to Git and GitHub

## GitHub Entities
### Describe the different GitHub accounts (personal, organization, enterprise)
#### <mark style="background-color: #CC99FF;">Personal Accounts</mark>
* **Individual accounts** with a username and profile.
* Can own **repositories** and projects; actions are attributed to the individual account.
* Can use either **GitHub Free** or **GitHub Pro**.
* URLs for repositories look like: `https://github.com/username/repo-name`
#### <mark style="background-color: #CC99FF;">Organization Accounts</mark>
* **Shared accounts** for multiple collaborators on projects.
* Can manage resources through individual **personal accounts**.
* Provides **different roles** with Principles of Least Privilege (PoLP)
* URLs for repositories look like: `https://github.com/organization-name/repo-name`
#### <mark style="background-color: #CC99FF;">Enterprise Accounts</mark>
* Part of **GitHub Enterprise Cloud (GHEC)** & **GitHub Enterprise Server (GHES)**
* Allows for **central management** of multiple organization
* Ideal for **large setups** requiring centralized policy and billing management.
### Describe GitHub’s products for personal accounts (free, pro)
<table>
    <tr>
        <th>GitHub Free</th>
        <th>GitHub Pro</th>
    </rd>
    <tr>
        <td>Community Support</td>
        <td>Email Support</td>
    </tr>
    <tr>
        <td>2,000 mins GitHub Actions per month</td>
        <td>3,000 mins GitHub Actions per month</td>
    </tr>
    <tr>
        <td>500 MB GitHub Packages storage</td>
        <td>2 GB GitHub Packages storage</td>
    </tr>
    <tr>
        <td>120 Hrs GitHub Codespaces core per month</td>
        <td>180 Hrs GitHub Codespaces core per month</td>
    </tr>
    <tr>
        <td>15 GB GitHub Codespaces storage per month</td>
        <td>20 GB GitHub Codespaces storage per month</td>
    </tr>
    <tr style="text-align: center;">
        <td colspan="2">Dependabot alerts</td>
    </tr>
    <tr style="text-align: center;">
        <td colspan="2">Deployment Protection Rules for public repositories</td>
    </tr>
    <tr style="text-align: center;">
        <td colspan="2">Two-factor Authentication enforcement</td>
    </tr>
    <tr>
        <td></td>
        <td>Wikis and Repository Insights Graphs</td>
    </tr>
    <tr>
        <td></td>
        <td>
            Advanced Tools for private repositories:
            <ul>
                <li>Required Pull Request Reviewers</li>
                <li>Multiple Pull Request Reviewers</li>
                <li>Protected Branches</li>
                <li>Code Owners</li>
                <li>Auto-linked References</li>
                <li>GitHub Pages</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            Deployment Protection Rules for public repositories for GitHub Actions features.
        </td>
        <td></td>
    </tr>
</table>

### Describe GitHub’s products for organization accounts (free for organizations, teams)

GitHub offers three types of organization plans: Free, Teams, and Enterprise.

<table>
    <tr>
        <th>Free Plan</th>
        <th>Teams Plan</th>
    </tr>
    <tr>
        <td>2,000 Mins GitHub Actions per month</td>
        <td>3,000 Mins GitHub Actions per month</td>
    </tr>
    <tr>
        <td>500 MB GitHub Packages storage</td>
        <td>2 GB GitHub Packages storage</td>
    </tr>
    <tr>
        <td>Team access controls for managing groups</td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>GitHub Support via email</td>
    </tr>
    <tr>
        <td></td>
        <td>Advanced tools and insights in private repositories</td>
    </tr>
    <tr>
        <td></td>
        <td>Required and multiple pull request reviewers</td>
    </tr>
    <tr>
        <td></td>
        <td>Draft pull requests</td>
    </tr>
    <tr>
        <td></td>
        <td>Team pull request reviewers</td>
    </tr>
    <tr>
        <td></td>
        <td>Protected branches</td>
    </tr>
    <tr>
        <td></td>
        <td>Code owners</td>
    </tr>
    <tr>
        <td></td>
        <td>Scheduled reminders</td>
    </tr>
    <tr>
        <td></td>
        <td>GitHub Pages and Wikis</td>
    </tr>
    <tr>
        <td></td>
        <td>Repository insights graphs</td>
    </tr>
    <tr>
        <td></td>
        <td>The option to enable or disable GitHub Codespaces</td>
    </tr>
</table>

### Describe the different deployment options for GitHub Enterprise
<table>
    <tr>
        <th colspan=2 style="text-align: center;">GitHub Enterprise Deployment Options</th>
    </tr>
    <tr>
        <td>GitHub Enterprise Server (GHES)</td>
        <td>GitHub Enterprise Cloud (GHEC)</td>
    </tr>
</table>
<table>
    <tr>
        <th style="text-align: center;">GitHub Enterprise (Cloud & Server)</th>
    </tr>
    <tr>
        <td><b>Includes</b>: <mark style="background-color: #CC99FF;">Everything from GitHub Organizations Team</mark></td>
    </tr>
    <tr>
        <td><b>Support</b>: GitHub Enterprise Support</td>
    </tr>
    <tr>
        <td><b>Security</b>: Additional security, compliance, and deployment controls</td>
    </tr>
    <tr>
        <td><b>Authentication</b>: <b style="color: #FF0000;">Single Sign-On (SSO) with SAML</b></td>
    </tr>
    <tr>
        <td><b>Access Provisioning</b>: SAML or SCIM</td>
    </tr>
    <tr>
        <td><b>Protection</b>: Deployment protection rules using GitHub Actions for private or internal repositories</td>
    </tr>
    <tr>
        <td><b>Integration</b>: GitHub Connect</td>
    </tr>
    <tr>
        <td><b>Advanced Security</b>: Option to purchase GitHub Advanced Security</td>
    </tr>
</table>
<table>
    <tr>
        <th colspan=2 style="text-align: center;">GitHub Enterprise Cloud (Specific Features)</th>
    </tr>
    <tr>
        <td><b style="color: #FF0000;">50,000</b> GitHub Actions minutes per month</td>
    </tr>
    <tr>
        <td><b style="color: #FF0000;">50 GB</b> GitHub Packages Storage</td>
    </tr>
    <tr>
        <td><b>Uptime</b>: 99.9% SLA (Service Level Agreement)</td>
    </tr>
    <tr>
        <td><b>Central Management</b>: Policy and billing management for multiple GitHub.com organizations</td>
    </tr>
    <tr>
        <td><b>User Account Management</b>: Provision and manage user accounts using Enterprise Managed users</td>
    </tr>
</table>

### Describe the features in the user profile (metadata, achievements, profile readme, repositories, pinned repositories, stars, etc.)

## GitHub Markdown
