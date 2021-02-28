#include <iostream>
#include <deque>
#include <sstream>

using namespace std;

int main() {
    deque<int> d;
    int n;
    cin >> n;
    cin.ignore();
    while (n-- > 0) {
        string s;
        getline(cin, s);
        istringstream ss(s);
        string stringBuffer;
        ss >> stringBuffer;
        if (stringBuffer == "push_front") {
            ss >> stringBuffer;
            d.push_front(stoi(stringBuffer));
        } else if (stringBuffer == "push_back") {
            ss >> stringBuffer;
            d.push_back(stoi(stringBuffer));
        } else if (stringBuffer == "pop_front") {
            if (d.empty()) {
                cout << -1 << endl;
            } else {
                cout << d.front() << endl;
                d.pop_front();
            }
        } else if (stringBuffer == "pop_back") {
            if (d.empty()) {
                cout << -1 << endl;
            } else {
                cout << d.back() << endl;
                d.pop_back();
            }
        } else if (stringBuffer == "size") {
            cout << d.size() << endl;
        } else if (stringBuffer == "empty") {
            cout << (d.empty() ? 1 : 0) << endl;
        } else if (stringBuffer == "front") {
            cout << (d.empty() ? -1 : d.front()) << endl;
        } else if (stringBuffer == "back") {
            cout << (d.empty() ? -1 : d.back()) << endl;
        }
    }
    return 0;
}