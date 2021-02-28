#include <iostream>
#include <algorithm>
#include <vector>

using namespace std;

bool compare(string l, string r);

int main() {
    int n;
    cin >> n;
    vector<string> v;
    while (n-- > 0) {
        string s;
        cin >> s;
        v.push_back(s);
    }
    sort(v.begin(), v.end(), compare);
    v.erase(unique(v.begin(), v.end()), v.end());
    for (string s : v) {
        cout << s << endl;
    }
}

bool compare(string l, string r) {
    if (l.length() == r.length()) {
        return l < r;
    } else {
        return l.length() < r.length();
    }
}