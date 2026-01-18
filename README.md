# Simple Flask App

Aplikacja Dydaktyczna wyświetlająca imię i wiadomość w różnych formatach dla zajęć
o Continuous Integration, Continuous Delivery i Continuous Deployment.

- W projekcie wykorzystamy virtual environment, dla utworzenia hermetycznego środowisko dla aplikacji:

  ```
  # tworzymy hermetyczne środowisko dla bibliotek aplikacji:
  $ python -m venv .venv

  # aktywowanie hermetycznego środowiska
  $ source .venv/Source/activate
  $ pip install -r requirements.txt
  $ pip install -r test_requirements.txt

  # zobacz
  $ pip list
  ```

  Sprawdź: [tutorial venv](https://docs.python.org/3/tutorial/venv.html) oraz [biblioteki flask](http://flask.pocoo.org).

- Uruchamianie applikacji:

  ```
  # jako zwykły program
  $ python main.py

  # albo:
  $ PYTHONPATH=. FLASK_APP=hello_world flask run
  ```

- Uruchamianie testów (see: http://doc.pytest.org/en/latest/capture.html):

  ```
  $ PYTHONPATH=. py.test
  $ PYTHONPATH=. py.test --verbose -s
  
  $ PYTHONPATH=. py.test --verbose -s
========================================= test session starts =========================================
platform win32 -- Python 3.13.3, pytest-9.0.2, pluggy-1.6.0 -- C:\Users\domzi\Zielony-Kot\.venv\Scripts\python.exe
cachedir: .pytest_cache
rootdir: C:\Users\domzi\Zielony-Kot\2025_L_II_NWh_INFI_IAMm
collected 3 items

test/test_formater.py::TestFormater::test_plain_uppercase PASSED
test/test_views.py::FlaskrTestCase::test_msg_with_output FAILED
test/test_views.py::FlaskrTestCase::test_outputs PASSED

============================================== FAILURES ===============================================
_________________________________ FlaskrTestCase.test_msg_with_output _________________________________

self = <test_views.FlaskrTestCase testMethod=test_msg_with_output>

    def test_msg_with_output(self):
        rv = self.app.get('/?output=json')
>       self.assertEqual(b'{ "imie":"Natalia", "mgs":Hello World!"}', rv.data)
E       AssertionError: b'{ "imie":"Natalia", "mgs":Hello World!"}' != b'{ "imie":"Magda", "mgs":Hello World!"}'

test\test_views.py:18: AssertionError
======================================= short test summary info =======================================
FAILED test/test_views.py::FlaskrTestCase::test_msg_with_output - AssertionError: b'{ "imie":"Natalia", "mgs":Hello World!"}' != b'{ "imie":"Magda", "mgs":Hello Worl...
===================================== 1 failed, 2 passed in 0.18s =====================================
(.venv)
domzi@GreenCat MINGW64 ~/Zielony-Kot/2025_L_II_NWh_INFI_IAMm (master)
$ PYTHONPATH=. py.test --verbose -s
========================================= test session starts =========================================
platform win32 -- Python 3.13.3, pytest-9.0.2, pluggy-1.6.0 -- C:\Users\domzi\Zielony-Kot\.venv\Scripts\python.exe
cachedir: .pytest_cache
rootdir: C:\Users\domzi\Zielony-Kot\2025_L_II_NWh_INFI_IAMm
collected 3 items

test/test_formater.py::TestFormater::test_plain_uppercase PASSED
test/test_views.py::FlaskrTestCase::test_msg_with_output FAILED
test/test_views.py::FlaskrTestCase::test_outputs PASSED

============================================== FAILURES ===============================================
_________________________________ FlaskrTestCase.test_msg_with_output _________________________________

self = <test_views.FlaskrTestCase testMethod=test_msg_with_output>

    def test_msg_with_output(self):
        rv = self.app.get('/?output=json')
>       self.assertEqual(b'{ "imie":"Natalia", "mgs":Hello World!"}', rv.data)
E       AssertionError: b'{ "imie":"Natalia", "mgs":Hello World!"}' != b'{ "imie":"Magda", "mgs":Hello World!"}'

test\test_views.py:18: AssertionError
======================================= short test summary info =======================================
FAILED test/test_views.py::FlaskrTestCase::test_msg_with_output - AssertionError: b'{ "imie":"Natalia", "mgs":Hello World!"}' != b'{ "imie":"Magda", "mgs":Hello Worl...
===================================== 1 failed, 2 passed in 0.18s =====================================
(.venv)
domzi@GreenCat MINGW64 ~/Zielony-Kot/2025_L_II_NWh_INFI_IAMm (master)
$ PYTHONPATH=. py.test --verbose -s
========================================= test session starts =========================================
platform win32 -- Python 3.13.3, pytest-9.0.2, pluggy-1.6.0 -- C:\Users\domzi\Zielony-Kot\.venv\Scripts\python.exe
cachedir: .pytest_cache
rootdir: C:\Users\domzi\Zielony-Kot\2025_L_II_NWh_INFI_IAMm
collected 3 items

test/test_formater.py::TestFormater::test_plain_uppercase PASSED
test/test_views.py::FlaskrTestCase::test_msg_with_output FAILED
test/test_views.py::FlaskrTestCase::test_outputs PASSED

============================================== FAILURES ===============================================
_________________________________ FlaskrTestCase.test_msg_with_output _________________________________

self = <test_views.FlaskrTestCase testMethod=test_msg_with_output>

    def test_msg_with_output(self):
        rv = self.app.get('/?output=json')
>       self.assertEqual(b'{ "imie":"Natalia", "mgs":Hello World!"}', rv.data)
E       AssertionError: b'{ "imie":"Natalia", "mgs":Hello World!"}' != b'{ "imie":"Magda", "mgs":Hello World!"}'

test\test_views.py:18: AssertionError
======================================= short test summary info =======================================
FAILED test/test_views.py::FlaskrTestCase::test_msg_with_output - AssertionError: b'{ "imie":"Natalia", "mgs":Hello World!"}' != b'{ "imie":"Magda", "mgs":Hello Worl...
===================================== 1 failed, 2 passed in 0.17s =====================================
(.venv)
domzi@GreenCat MINGW64 ~/Zielony-Kot/2025_L_II_NWh_INFI_IAMm (master)
$ pytest
========================================= test session starts =========================================
platform win32 -- Python 3.13.3, pytest-9.0.2, pluggy-1.6.0
rootdir: C:\Users\domzi\Zielony-Kot\2025_L_II_NWh_INFI_IAMm
collected 0 items / 2 errors

=============================================== ERRORS ================================================
_______________________________ ERROR collecting test/test_formater.py ________________________________
ImportError while importing test module 'C:\Users\domzi\Zielony-Kot\2025_L_II_NWh_INFI_IAMm\test\test_formater.py'.
Hint: make sure your test modules/packages have valid Python names.
Traceback:
C:\Python313\Lib\importlib\__init__.py:88: in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
test\test_formater.py:1: in <module>
    from hello_world.formater import plain_text_upper_case
E   ModuleNotFoundError: No module named 'hello_world'
_________________________________ ERROR collecting test/test_views.py _________________________________
ImportError while importing test module 'C:\Users\domzi\Zielony-Kot\2025_L_II_NWh_INFI_IAMm\test\test_views.py'.
Hint: make sure your test modules/packages have valid Python names.
Traceback:
C:\Python313\Lib\importlib\__init__.py:88: in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
test\test_views.py:2: in <module>
    from hello_world import app
E   ModuleNotFoundError: No module named 'hello_world'
======================================= short test summary info =======================================
ERROR test/test_formater.py
ERROR test/test_views.py
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Interrupted: 2 errors during collection !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
========================================== 2 errors in 0.10s ==========================================
(.venv)
domzi@GreenCat MINGW64 ~/Zielony-Kot/2025_L_II_NWh_INFI_IAMm (master)
$  PYTHONPATH=. py.test --verbose -s
========================================= test session starts =========================================
platform win32 -- Python 3.13.3, pytest-9.0.2, pluggy-1.6.0 -- C:\Users\domzi\Zielony-Kot\.venv\Scripts\python.exe
cachedir: .pytest_cache
rootdir: C:\Users\domzi\Zielony-Kot\2025_L_II_NWh_INFI_IAMm
collected 3 items

test/test_formater.py::TestFormater::test_plain_uppercase PASSED
test/test_views.py::FlaskrTestCase::test_msg_with_output PASSED
test/test_views.py::FlaskrTestCase::test_outputs PASSED

========================================== 3 passed in 0.14s ==========================================
(.venv)

  ```


- Kontynuując pracę z projektem, aktywowanie hermetycznego środowiska dla aplikacji py:

  ```
  # deaktywacja
  $ deactivate
  ```

  ```
  ...

  # aktywacja 
  $ source .venv/Source/activate
  ```

- Integracja z CircleCI:

  ```
  # miejsce na twoje notatki
  ```

# Pomocnicze

## Ubuntu

- Instalacja dockera: [dockerce howto](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

## Centos

- Instalacja docker-a:

  ```
  $ yum remove docker \
        docker-common \
        container-selinux \
        docker-selinux \
        docker-engine

  $ yum install -y yum-utils

  $ yum-config-manager \
      --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo

  $ yum makecache fast
  $ yum install -y docker-ce
  $ systemctl start docker
  ```
