using System;
using System.Collections.Generic;

namespace DesktopAutomationSuite;

public sealed class AutomationPlan
{
    private readonly List<string> _steps = new();

    public string Name { get; }

    public AutomationPlan(string name)
    {
        Name = string.IsNullOrWhiteSpace(name) ? "Untitled automation" : name.Trim();
    }

    public AutomationPlan AddStep(string description)
    {
        if (!string.IsNullOrWhiteSpace(description))
            _steps.Add(description.Trim());
        return this;
    }

    public void Preview()
    {
        Console.WriteLine($"Automation: {Name}");
        for (var i = 0; i < _steps.Count; i++)
            Console.WriteLine($"{i + 1}. {_steps[i]}");
    }
}
