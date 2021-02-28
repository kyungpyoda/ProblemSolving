#include <iostream>

using namespace std;

int main() {
    while (true) {
        string s;
        cin >> s;
        if (s == "0") { break; }
        bool flag = true;
        for (int i = 0; i < s.length()/2; i++) {
            if (s[i] != s[s.length() - 1 - i]) {
                flag = false;
                break;
            }
        }
        cout << (flag ? "yes" : "no") << endl;
    }
}