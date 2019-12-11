within Modelica.Electrical.Batteries.ParameterRecords.TransientData;
record CellData "Parameters of a transient battery cell"
  extends Modelica.Electrical.Batteries.ParameterRecords.CellData(
    R0=Ri - sum(rcData.R));
  parameter RCData rcData[:] "Parameter of optional RC-elements"
    annotation (Dialog(group="RC-elements"),
      Placement(transformation(extent={{-10,0},{10,20}})));
  final parameter Integer nRC=size(rcData, 1) "Number of RC-elements"
    annotation (Dialog(group="Optional RC-elements"), Evaluate=true);
  annotation(defaultComponentPrefixes="parameter", Documentation(info="<html>
<p>Collects parameters of battery cells:</p>
<ul>
<li>Nominal charge</li>
<li>OCV versus SOC characteristic</li>
<li>Inner resistance; can be calculated from OCVmax / short-circuit current (at OCVmax)</li>
<li>Array of records <code>rcData</code> for battery models comprising RC-elements</li>
</ul>
<h4>Note:</h4>
<p>
If <code>useLinearSOCDependency=true</code>, the OCV versus SOC table is built up internally from <code>OCVmax, OCVmin, SOCmax, SOCmin</code>.<br>
Otherwise, the OCV versus SOC table has to be specified: 1st column = SOC values in ascending order, 2nd column = corresponding OCV values with respect to OCVmax.
</p>
<p>
The size of the array <a href=\"modelica://Modelica.Electrical.Batteries.ParameterRecords.RCData\">rcData</a> defines the count of used RC-elements as well as the parameters of these. 
The sum of the resistances <code>rcData.R</code> must not exceed the total inner resistance <cde>Ri</code>.
</p>
</html>"),
    Icon(graphics={
        Line(
          points={{-6,-16},{-32,-16},{-32,-40},{-20,-40}},
          color={238,46,47}),
        Line(
          points={{-40,-26},{-32,-26}},
          color={238,46,47}),
        Line(
          points={{-6,-26},{-6,-6}},
          color={238,46,47}),
        Line(
          points={{6,-26},{6,-6}},
          color={238,46,47}),
        Line(
          points={{6,-16},{32,-16},{32,-40},{20,-40}},
          color={238,46,47}),
        Line(
          points={{32,-26},{40,-26}},
          color={238,46,47}),
        Rectangle(
          extent={{-20,-46},{20,-32}},
          lineColor={238,46,47})}));
end CellData;
