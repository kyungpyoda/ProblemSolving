#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

bool comp(pair<int, int> l, pair<int, int> r) {
    return l.first == r.first ? (l.second < r.second) : (l.first < r.first);
}
int main() {
    cin.tie(NULL);
    ios::sync_with_stdio(false);
    int n;
    cin >> n;
    vector<pair<int, int>> v;
    vector<string> names;
    for (int i = 0; i < n; i++) {
        string s;
        getline(cin, s);
        int age;
        cin >> age;
        string name;
        cin >> name;
        names.push_back(name);
        v.push_back(make_pair(age, i));
    }
    sort(v.begin(), v.end(), comp);
    for (auto e : v) {
        cout << e.first << " " << names[e.second] << '\n';
    }
    return 0;
}