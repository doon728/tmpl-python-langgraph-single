def test_import_agent_runs():
    from agent.main import run
    assert run() == "agent running"
