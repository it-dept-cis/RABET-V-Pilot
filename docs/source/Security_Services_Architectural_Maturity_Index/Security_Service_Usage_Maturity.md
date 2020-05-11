## Security Service Use

<table>
  <thead>
    <tr class="header">
      <th>Security Service Use Maturity Levels</th>
      <th>Quality Criteria</th>
      <th>Required Activity</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
	<ul>
	  <li>Level 0</li>
	</ul>
      </td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>
	<ul>
	  <li>Level 1: dedicated component exists in the system</li>
	</ul>
      </td>
      <td>A minimal number of components provide the service via the same means, ideally one per technical stack or subsystem.[2]</td>
      <td>
	<ul>
	  <li>One component is used for the security service but it is not dedicated to security mitigations (partial credit)</li>
	  <li>One dedicated component is used to provide the security service within the subsystem (full credit)</li>
	  <li>Multiple components are involved in providing the security servicer in a subsystem (no credit)</li>
	</ul>
      </td>
    </tr>
    <tr>
      <td>
	<ul>
	  <li>Level 2: security services are centrally configured</li>
	</ul>
      </td>
      <td>The security service is configured through a single component and is used consistently throughout the subsystem[3]</td>
      <td>
	<ul>
	  <li>Mostly configured centrally, with some service details configured at point of use (partial credit)</li>
	  <li>Configured centrally, or no configuration required (full credit)</li>
	  <li>Usually or always configured at the point of use (no credit)</li>
	</ul>
      </td>
    </tr>
    <tr>
      <td>
	<ul>
	  <li>Level 3: a consistent and stable interface integrates with the chosen technology framework</li>
	</ul>
      </td>
      <td>Security service components are used throughout the entirety of the product; system defaults enforce use of the security service; user is verifiable[4]</td>
      <td>
	<ul>
	  <li>Consistent use of the security service throughout the application but it’s use is not the default or easily verifiable (partial credit)</li>
	  <li>Consistent use of the security service which is made easy and verifiable by defaults or reusable components (full credit)</li>
	  <li>Little to no consistent use of the security service or it’s use is missing from key components (no credit)</li>
	</ul>
      </td>
    </tr>
  </tbody>
</table>
