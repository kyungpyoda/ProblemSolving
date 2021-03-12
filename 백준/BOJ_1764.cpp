#include <iostream>
#include <vector>
#include <unordered_set>
#include <algorithm>

using namespace std;

vector<string> v;
unordered_set<string> set;

int main() {
    int n, m;    
    cin >> n >> m;
    while (n-- > 0) {
        string s;
        cin >> s;
        set.insert(s);
    }
    while (m-- > 0) {
        string s;
        cin >> s;
        if (set.find(s) != set.end()) {
            v.push_back(s);
        }
    }
    sort(v.begin(), v.end());
    cout << v.size() << '\n';
    for (string s : v) {
        cout << s << '\n';
    }
    return 0;
}