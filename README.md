# Tire Pressure Monitoring

## D1

### Three Point estimates in Minutes

|  Task No. | Best Case | Likely Case | Worst Case |
| --- | --- | --- | --- |
|  D1 | 10 | 25 | 40 |
|  D2 | 60 | 80 | 160 |
|  D3 | 80 | 150 | 200 |
|  D4 | 40 | 80 | 160 |
|  D5 | 30 | 70 | 150 |
|  D6 | 50 | 100 | 160 |
|  D7 | 40 | 70 | 120 |
|  D8 | 30 | 50 | 120 |
|  D9 | 40 | 60 | 100 |
|  D10 | 30 | 60 | 120 |
|  D11 | 40 | 60 | 100 |
|  D12* | 40 | 70 | 100 |
|  D13* | 20 | 40 | 60 |
|  D14* | 30 | 50 | 70 |
|  Sum (min) | 540 | 965 | 1660 |
|  Sum (hours) | 9 | 16,08 | 27,67 |
|  Result (min) | 1010 |  |  |
|  Result (hours) | 16,83 |  |  |

## D2

Given the formulas 

$$R_{RR} = W + R_{RL}$$

and

$$\frac{V_x}{V_y} = \frac{R_x}{R_y}$$

and velocities for all the wheels during the entire duration of the test data one can determine the curve radiuses easily as such:

$$R_{RL} = \frac{W}{\frac{V_{RR}}{V_{RL}}-1}$$

$$R_{RR} = \frac{R_{RL} \cdot V_{RR}}{V_{RL}}$$

$$R_{FR} = \frac{R_{RL} \cdot V_{FR}}{V_{RL}}$$

$$R_{FL} = \frac{R_{RL} \cdot V_{FL}}{V_{RL}}$$

(See findRadius.m)

Result:

![radiuses]('')

## D3

!()

## D4

If the difference between the maximum distance and the minimum distance is greater then 0.5% the system will detect tire pressure drop.

