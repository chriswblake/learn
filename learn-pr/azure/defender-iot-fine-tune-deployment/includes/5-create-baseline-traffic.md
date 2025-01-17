Your car manufacturing organization has offices and production sites across the globe, with a network linking them together. A sensor at one site is connected and sending data to Microsoft Defender for IoT. The deployment team has already fine-tuned the sensor settings ensuring that all the devices are correctly identified. Now your task is to set up the alert baseline to ensure that normal traffic doesn't trigger alerts within the system and instead only reports suspicious activity. Checking and updating the alerts is called the triage process.

Defender for IoT is automatically set to *learning* mode as soon as it starts to receive data from the sensor. In this mode, Defender for IoT starts building a baseline of alerts to help identify suspicious network traffic that might affect the security of your devices. When suspicious traffic is identified Defender for IoT creates an alert. During the *learning* mode, you need to check all of the alerts and confirm if the traffic is potentially dangerous. If the traffic is normal network traffic assign the *learn* status, and the sensor will learn not to flag this type of traffic in the future.

## Create the alerts baseline

To create the alert baseline, follow the triage process:

1. Filter the alerts - by time, severity, or another parameter.
1. Choose an alert, open the alert details pane, and analyze the alert information.
1. Follow the **Remediation steps** to triage and fix according to type of alert.
1. For less important alerts you might want to create a suppression rule.
1. Apply your changes.

## Triage your alerts

In the **Alert details** page, a set of remediation steps are listed in order to triage the alert.

- When the alert requires a security response the remediation steps set out the best options available.
- If you decide that this is regular network traffic, select **Learn**, and the sensor learns that this network traffic shouldn't trigger an alert again.

Making these changes is called the triage process.

### Filter and group alerts

In Defender for IoT, select the **Alerts** page that lists all of the alerts generated by your sensor.

1. Filter the list of alerts by a parameter or mix of parameters, such as a time period, the site or zone, or alert severity. You can also sort the list using the **Group by** feature.

    :::image type="content" source="../media/5-alerts-main-group-by-box.png" alt-text="Screenshot of the alerts screen filtering with group by setting with box." lightbox="../media/5-alerts-main-group-by-box.png":::

1. Select an alert and the details appear in the alert pane, including the alert description, traffic source, traffic destination and more.
1. To analyze the alert in greater detail, select **View full details**.
1. Choosing multiple alerts allows you to make bulk changes to the status, severity, or learn levels using the top menu bar.

   :::image type="content" source="../media/5-alerts-main-bulk-status-boxed.png" alt-text="Screenshot of the alerts screen making a bulk status change with box." lightbox="../media/5-alerts-main-bulk-status-boxed.png":::

### Analyze an alert

Alerts are categorized according to the type of security problem identified. These categories are called **Names** in the alerts page.

- Analyze the alert in greater depth in the **Alert full details** page, which has two tabs, the **Alerts details** and the **Take action** tab.
- When you view the alert details page there's also a list of recommended steps to take to deal with the alert, which differ based on the alert. These are called **Remediation steps** and are found in the **Take action** tab.
- Some of the **Remediation steps** can be done immediately and directly in Defender for IoT. While others need you to check aspects of your system, and then update the alert another time.
- Remediation steps can sometimes involve a list of multiple actions that must all be done, or sometimes a choice of options is listed where only one can be done.

You can also download the PCAP files of the raw traffic data and analyze them using a PCAP file reader, which might also give you more information about the alert. This is outside the scope of this module.

### Update alerts

After following the remediation steps, if available for the alert, you can **Select Learn**.

Choose **Learn** for an alert triggered by normal network traffic that you want to add to the alert baseline. This means that next time this type of network traffic is detected, an alert isn't created. For example, when the sensor detects firmware version changes following standard maintenance procedures, or when a new, expected device is added to the network. Learning an alert closes the alert and adds an item to the sensor event timeline. Learning alerts is available for selected alerts only, mostly alerts triggered by *Policy* and *Anomaly* engine alerts.

Then update the **severity** or **status** levels, which are automatically set when the alert is created and might now need changing.

In Defender for IoT, the sensor assigns three **Severity** levels, which are: *High*, *Medium* and *Low*. The sensor also assigns three **Status** levels, which are *New*, *Active* and *Closed*. We recommend that you start triaging the critical level alerts first.

:::image type="content" source="../media/5-alerts-main.png" alt-text="Screenshot of the alerts screen." lightbox="../media/5-alerts-main.png":::

You should update the status level based on the following descriptions:

| Status | Description  |
|---------|---------|
|**New**     |  *New* alerts are alerts that the team needs to triage or investigate. |
|**Active**  |  Set an alert to *Active* to indicate that an investigation is underway, but that the alert can't yet be closed or otherwise triaged. |
|**Closed**  |  Set and alert to *Close* to indicate that the investigation is complete, and to alert you again the next time the same traffic is detected. |

You should update the severity level based on the following descriptions:

| Severity  |  Description  |
|---------|---------|
| **High**    |  Indicates a malicious attack that should be handled immediately.        |
| **Medium**  |  Indicates a security threat that's important to address.        |
| **Low**     |  Indicates some deviation from the baseline behavior that might contain a security threat, or contains no security threats.        |

**Suppression rules** help you filter out unwanted alerts, either permanently or for a limited time period, so that they don't appear in the **Alerts** list even if they're triggered. This feature allows you to focus on dealing with more important alerts and not seeing minor ones.

To create a suppression rule you need to assign a name, a time range for it, and choose which sensors the rule applies to. You can also apply a filter, based on IP address, MAC ID, subnet, or host address.

## Save changes

When you make these alert changes the baseline alerts are updated. As the *learning* process continues, you receive less new alerts as the sensor learns the normal flow of traffic in your system.
