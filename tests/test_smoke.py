import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

def test_import_agent_runs():
    from agent.main import run
    assert run() == "agent running"
