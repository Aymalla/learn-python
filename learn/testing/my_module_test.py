import unittest
from my_module import make_lower_case, make_title_case, make_upper_case, return_list

class TestMyModule(unittest.TestCase):
    
    def test_make_upper_case(self):
        self.assertEqual(make_upper_case('hello'), 'HELLO')
        
    def test_make_lower_case(self):
        self.assertEqual(make_lower_case('HELLO'), 'hello')
        
    def test_make_title_case(self):
        self.assertEqual(make_title_case('hello'), 'Hello')
        
    def test_return_list(self):
        self.assertEqual(return_list(), [1, 2, 3])
        
if __name__ == '__main__':
    unittest.main()
