︠3b5cbd4d-c516-4f50-af6e-0921fa7bdaees︠
A=matrix([[1, 1, 1, 1, 1, 1, 1],
          [0, 0, 0, 1, 1, 1, 2],
          [0, 0, 1, 0, 0, 1, 0],
          [0, 1, 0, 0, 1, 0, 0]])

n=len(A.columns())

bases=[[0, 1, 2, 3], [0, 1, 2, 4], [0, 2, 3, 4], [1, 2, 3, 4], [0, 1, 2, 5], [0, 1, 3, 5], [1, 2, 3, 5], [0, 1, 4, 5], [0, 2, 4, 5], [0, 3, 4, 5], [1, 3, 4, 5], [2, 3, 4, 5], [0, 1, 2, 6], [1, 2, 3, 6], [0, 2, 4, 6], [1, 2, 4, 6], [2, 3, 4, 6], [0, 1, 5, 6], [1, 2, 5, 6], [1, 3, 5, 6], [0, 4, 5, 6], [1, 4, 5, 6], [2, 4, 5, 6], [3, 4, 5, 6]]

allVerts=[[1, 0, 0, 0], [1, 1/2, 1/2, 1/2], [1, 1/3, 1/3, 1/3], [1, 2/5, 2/5, 2/5], [1, 0, 0, 1], [1, 0, 1, 0], [1, 1, 0, 0], [1, 2/3, 0, 2/3], [1, 2/3, 2/3, 0], [1, 1/2, 0, 1/2], [1, 1, 0, 1], [1, 1, 1/3, 1/3], [1, 2/3, 1/3, 1/3], [1, 1/2, 1/2, 0], [1, 1/2, 1/4, 1/2], [1, 1, 1, 0], [1, 1/2, 1/2, 1/4], [1, 2, 0, 0], [1, 4/5, 2/5, 2/5], [1, 1, 0, 1/2], [1, 1, 1/2, 0], [1, 3/4, 1/4, 1/2], [1, 3/4, 1/2, 1/4]]

edges=[[0, 2], [0, 4], [0, 5], [0, 6], [0, 9], [0, 13], [1, 3], [1, 4], [1, 5], [1, 7], [1, 8], [1, 10], [1, 12], [1, 14], [1, 15], [1, 16], [1, 18], [1, 21], [1, 22], [2, 3], [2, 4], [2, 5], [2, 9], [2, 13], [3, 4], [3, 5], [3, 14], [3, 16], [4, 5], [4, 7], [4, 9], [4, 10], [4, 14], [5, 8], [5, 13], [5, 15], [5, 16], [6, 9], [6, 12], [6, 13], [6, 17], [6, 19], [6, 20], [7, 9], [7, 10], [7, 12], [7, 14], [7, 19], [7, 21], [8, 12], [8, 13], [8, 15], [8, 16], [8, 20], [8, 22], [9, 12], [9, 13], [9, 14], [10, 11], [10, 15], [10, 17], [10, 18], [10, 19], [10, 21], [11, 15], [11, 17], [11, 18], [11, 19], [11, 20], [12, 13], [12, 14], [12, 16], [12, 19], [12, 20], [12, 21], [12, 22], [13, 16], [15, 17], [15, 18], [15, 20], [15, 22], [17, 19], [17, 20], [18, 21], [18, 22], [19, 20], [19, 21], [20, 22]]


ridges=[[0, 2, 4], [0, 2, 5], [0, 2, 9], [0, 2, 13], [0, 4, 5], [0, 4, 9], [0, 5, 13], [0, 6, 9], [0, 6, 13], [0, 9, 13], [1, 3, 4], [1, 3, 5], [1, 3, 14], [1, 3, 16], [1, 4, 5], [1, 4, 7], [1, 4, 10], [1, 4, 14], [1, 5, 8], [1, 5, 15], [1, 5, 16], [1, 7, 10], [1, 7, 14], [1, 7, 21], [1, 8, 15], [1, 8, 16], [1, 8, 22], [1, 10, 15], [1, 10, 18], [1, 10, 21], [1, 12, 14], [1, 12, 16], [1, 12, 21], [1, 12, 22], [1, 15, 18], [1, 15, 22], [1, 18, 21], [1, 18, 22], [2, 3, 4], [2, 3, 5], [2, 3, 9, 14], [2, 3, 13, 16], [2, 4, 5], [2, 4, 9], [2, 5, 13], [2, 9, 13], [3, 4, 5], [3, 4, 14], [3, 5, 16], [3, 12, 14, 16], [4, 7, 9], [4, 7, 10], [4, 7, 14], [4, 9, 14], [5, 8, 13], [5, 8, 15], [5, 8, 16], [5, 13, 16], [6, 7, 9, 19], [6, 8, 13, 20], [6, 9, 12], [6, 9, 13], [6, 12, 13], [6, 12, 19], [6, 12, 20], [6, 17, 19], [6, 17, 20], [6, 19, 20], [7, 9, 12], [7, 9, 14], [7, 10, 19], [7, 10, 21], [7, 12, 14], [7, 12, 19], [7, 12, 21], [7, 19, 21], [8, 12, 13], [8, 12, 16], [8, 12, 20], [8, 12, 22], [8, 13, 16], [8, 15, 20], [8, 15, 22], [8, 20, 22], [9, 12, 13], [9, 12, 14], [10, 11, 15], [10, 11, 17], [10, 11, 18], [10, 11, 19], [10, 15, 17], [10, 15, 18], [10, 17, 19], [10, 18, 21], [10, 19, 21], [11, 15, 17], [11, 15, 18], [11, 15, 20], [11, 17, 19], [11, 17, 20], [11, 18, 19, 21], [11, 18, 20, 22], [11, 19, 20], [12, 13, 16], [12, 18, 21, 22], [12, 19, 20], [12, 19, 21], [12, 20, 22], [15, 17, 20], [15, 18, 22], [15, 20, 22], [17, 19, 20]]


threedim=[[0, 2, 4, 5], [0, 2, 4, 9], [0, 2, 5, 13], [0, 2, 9, 13], [0, 6, 9, 13], [1, 3, 4, 5], [1, 3, 4, 14], [1, 3, 5, 16], [1, 3, 12, 14, 16], [1, 4, 7, 10], [1, 4, 7, 14], [1, 5, 8, 15], [1, 5, 8, 16], [1, 7, 10, 21], [1, 7, 12, 14, 21], [1, 8, 12, 16, 22], [1, 8, 15, 22], [1, 10, 15, 18], [1, 10, 18, 21], [1, 12, 18, 21, 22], [1, 15, 18, 22], [2, 3, 4, 5], [2, 3, 4, 9, 14], [2, 3, 5, 13, 16], [2, 3, 9, 12, 13, 14, 16], [4, 7, 9, 14], [5, 8, 13, 16], [6, 7, 9, 12, 19], [6, 8, 12, 13, 20], [6, 9, 12, 13], [6, 12, 19, 20], [6, 17, 19, 20], [7, 9, 12, 14], [7, 10, 19, 21], [7, 12, 19, 21], [8, 12, 13, 16], [8, 12, 20, 22], [8, 15, 20, 22], [10, 11, 15, 17], [10, 11, 15, 18], [10, 11, 17, 19], [10, 11, 18, 19, 21], [11, 12, 18, 19, 20, 21, 22], [11, 15, 17, 20], [11, 15, 18, 20, 22], [11, 17, 19, 20]]


yvars = [var('y%s'%i) for i in range(1,n+1)]
gens=[y4*y6-2*y3*y7, y4*y5-2*y2*y7, y3*y5-y2*y6, y4^2-4*y1*y7, y3*y4-2*y1*y6, y2*y4-2*y1*y5] #need to change weights!
︡7900a3d4-6915-4aa5-9828-52f961381e6b︡{"done":true}
︠8bbf24e4-bc20-4baf-89e9-e18a9beed32ds︠
xvars = [var('x%s'%i) for i in range(len(A.columns()))] #different xvars

def get_bases_for_vertex(v): #get all bases that contain the vertex
    L=[]
    for b in bases:
        Q=Polyhedron(vertices=A[0:len(A.rows()),b].columns());
        if Q.contains(v):
            L.append(b)
    return L

def get_supports_at_vertex(v,L): #get supports of log-Voronoi cells at the vertex v; here L is the list of bases containing v
    verts=[]
    for el in L:
        M=A[range(len(A.rows())),[i for i in sorted(list(el))]]
        sol=M.solve_right(v)
        needed_vars=[xvars[i] for i in sorted(list(el))]
        dic={needed_vars[i]:sol[i] for i in range(len(el))}
        verts.append([dic[xvars[i]] if i in list(el) else 0 for i in range(len(A.columns()))])
    Pc=Polyhedron(vertices=verts)
    ss=[]; vs=Pc.vertices_list()
    for vert in vs:
        s=[]
        for i in range(len(vert)):
            if vert[i]!=0:
                s.append(i+1)
        ss.append(s)
    return ss


def get_bases(r): #get all bases (for non-vertices)
    L=[]
    for b in bases:
        Q=Polyhedron(vertices=A[0:len(A.rows()),b].columns());
        if set([Q.contains(allVerts[r[i]]) for i in range(len(r))])=={True}:
            L.append(b)
    return L


def get_supports(r,L): #get supports of log-Voronoi cells (for non-vertices)
    verts=[]
    for el in L:
        M=A[range(len(A.rows())),[i for i in sorted(list(el))]]
        ridge=Polyhedron(vertices=[allVerts[r[i]] for i in range(len(r))])
        b=ridge.representative_point()
        sol=M.solve_right(b)
        needed_vars=[xvars[i] for i in sorted(list(el))]
        dic={needed_vars[i]:sol[i] for i in range(len(el))}
        verts.append([dic[xvars[i]] if i in list(el) else 0 for i in range(len(A.columns()))])
    Pc=Polyhedron(vertices=verts)
    ss=[]; vs=Pc.vertices_list()
    for v in vs:
        s=[]
        for i in range(len(v)):
            if v[i]!=0:
                s.append(i+1)
        ss.append(s)
    return ss

def is_interior(r):
    P=Polyhedron(vertices=A.columns())
    P=P.change_ring(QQ)
    facets=[]
    for f in P.facets():
        facets.append(Polyhedron(vertices=f.vertices()))
    interior=True
    for f in facets:
        if set([f.contains(allVerts[r[i]]) for i in range(len(r))])=={True}:
            interior=False
            break
    return interior

def D(v,w):
    s=0
    for i in range(len(A.columns())):
        if v[i]!=0:
            s+=v[i]*log(v[i]/w[i])
    return s

def sup(v):
    s=[]
    for i in range(len(v)):
        if v[i]!=0:
            s.append(i+1)
    return s
︡280188c9-8e06-482c-83c7-fd2406c1b1ec︡{"done":true}
︠e46d97f6-16c2-49e3-9150-630e1fbc8452s︠
int_inds=[]
for v in allVerts:
    if not vector(v) in A.columns():
        int_inds.append(allVerts.index(v)) #finds all "interior" vertices (not in the columns of A)

int_inds
︡4a5db3b5-9a0c-40c5-8af4-bce0e57a3831︡{"stdout":"[1, 2, 3, 7, 8, 9, 11, 12, 13, 14, 16, 18, 19, 20, 21, 22]\n"}︡{"done":true}
︠22916788-7cca-48fd-a203-6781c3dbd6cfs︠
int_edges=[]; int_ridges=[]; int_threedim=[];
for e in edges:
    if is_interior(e):
        int_edges.append(e)
for r in ridges:
    if is_interior(r):
        int_ridges.append(r)
for t in threedim:
    if is_interior(t):
        int_ridges.append(t)

check=int_edges+int_ridges+int_threedim
︡42305a52-2783-497c-81ad-76bcf0501c84︡{"done":true}
︠eb5bb2e3-129d-41e7-a740-ed92b9920ea9s︠
len(check)
︡bd41102b-4696-4861-ad2b-f4e76c3d0018︡{"stdout":"190\n"}︡{"done":true}
︠85d9eb76-d8a2-471e-9643-67a5c00d8553s︠
check_faces=[]
for i in int_inds:
    w=allVerts[i]
    Bw=get_bases_for_vertex(w)
    check_faces.append([[i],get_supports_at_vertex(vector(w),Bw)])
for c in check:
    L=get_bases(c)
    check_faces.append([c,get_supports(c,L)])
︡097ee4af-4f07-44cf-9e74-70937a6e77fb︡{"done":true}
︠e39e776c-a3ed-429b-a905-651c5e73592fs︠
#the below gives vertices of the log-Voronoi cells for the faces we need to check

LVs=[]
for f in check_faces:
    rvars = [var('r%s'%i) for i in range(1,len(f[0])+1)]
    if len(rvars)==1: #vertices first
        verts=[]; L=get_bases_for_vertex(allVerts[f[0][0]]);
        for el in L:
            M=A[range(len(A.rows())),[i for i in sorted(list(el))]]
            sol=M.solve_right(vector(allVerts[f[0][0]]))
            needed_vars=[xvars[i] for i in sorted(list(el))]
            dic={needed_vars[i]:sol[i] for i in range(len(el))}
            verts.append(tuple([dic[xvars[i]] if i in list(el) else 0 for i in range(len(A.columns()))]))
        good_verts=[];
        for v in list(set(verts)):
            good_verts.append(vector(v))
        LVs.append([len(rvars),f[0],good_verts])
    if len(rvars)>1: #other faces (edges + ridges)
        verts=[]; L=get_bases(f[0]);
        for el in L:
            M=A[range(len(A.rows())),[i for i in sorted(list(el))]]
            b=sum([rvars[i]*vector(allVerts[f[0][i]]) for i in range(len(rvars)-1)])+(1-sum([rvars[i] for i in range(len(rvars)-1)]))*vector(allVerts[f[0][len(rvars)-1]])
            sol=M.solve_right(b)
            needed_vars=[xvars[i] for i in sorted(list(el))]
            dic={needed_vars[i]:sol[i] for i in range(len(el))}
            verts.append(tuple([dic[xvars[i]] if i in list(el) else 0 for i in range(len(A.columns()))]))
        good_verts=[];
        for v in list(set(verts)):
            good_verts.append(vector(v))
        LVs.append([len(rvars),f[0],good_verts])
︡099c2711-8271-47ed-b931-eea77787b494︡{"done":true}
︠637dc28a-d66e-4b26-a274-292a5616b485s︠
face_sups=[]
for el in LVs:
    ls=[]
    rz=[var('r%s'%i)==1/(el[0]) for i in range(1,el[0])]
    P=Polyhedron(vertices=[v.subs(rz).change_ring(QQ) for v in el[2]])
    for i in list(range(n-1-2)):
        for f in P.faces(i):
            fs=[]
            for v in f.vertices():
                fs.append(sup(v.vector()))
            ls.append(fs)
    face_sups.append(ls)


for el in LVs:
    el.remove(el[0])

pot_proj_verts=[]
for i in range(len(LVs)):
    for v in LVs[i][1]:
        for f in face_sups[i]:
            summing=[];
            for e in f:
                summing+=e
            if [x for x in sup(v) if x in list(set(summing))]==[] and sorted(sup(v)+list(set(summing)))==[1..n]:
                listik=[]
                for el in f:
                    for ver in LVs[i][1]:
                        if sup(ver)==el:
                            listik.append(ver)
                pot_proj_verts.append([LVs[i][0],v,listik])
︡4401c9ed-78df-403d-a273-ad19c1084247︡{"done":true}
︠b04203db-472a-43dd-ba41-d23c41290c39s︠
#for all vertex-face pairs, obtained above, we construct ideals
silly=var('s,u')
pars=[]; ideal_list=[];
for el in pot_proj_verts:
    tvars = [var('t%s'%i) for i in range(1,len(el[2])+1)]
    if len(tvars)==1:
        pars.append([el[0],el[1],s*el[1]+(1-s)*el[2][0]])
    else:
        gp=sum([tvars[i]*el[2][i] for i in range(len(el[2])-1)])+(1-sum([tvars[i] for i in range(len(el[2])-1)]))*el[2][len(el[2])-1]
        pars.append([el[0],el[1],s*el[1]+(1-s)*gp])

for el in pars:
    subz={yvars[i]:el[2][i] for i in range(len(yvars))}
    ideal_list.append((el,list(vector(gens).subs(subz))))
︡374e2517-95b0-439b-b6ef-acc573628ae9︡{"done":true}
︠61a94ef5-44d6-4c36-b318-33c8273e207cs︠
#collect variables for all ideals
vz=[]
for el in ideal_list:
    l=[]
    for v in el[1]:
        l=list(set(l+list(v.variables())))
    vz.append(l)

︡0f113aa2-90cd-49cc-b4eb-1b4202d5b9ef︡{"done":true}
︠62568028-6451-48e5-810c-f195a366f348s︠

#solve
good_slz=[]
for i in range(len(ideal_list)):
    slz=solve(ideal_list[i][1],vz[i],solution_dict=True)
    l=[];
    for z in slz:
        bounds=True
        for vr in vz[i]:
            if z[vr]>=1 or z[vr]<=0 or (z[vr] in CC and z[vr] not in RR):
                bounds=False
        if bounds==True:
            l.append(z)
    if l!=[]:
        good_slz.append([ideal_list[i][0], l[0]])
︡324bf2e1-f1ab-441a-9f98-372e1db9964f︡{"done":true}
︠e953c1d0-7819-47e1-a2e7-3e30520a0ae8︠

#display all divergences (and solutions)
for g in good_slz:
    z=g[1]
    (g[0][0],D(g[0][1].subs(z), g[0][2].subs(z)).full_simplify())
    [g[0][0], g[1]]
    print()
︡5021cd2b-9f31-4042-a21d-a74de7a77a76︡{"stdout":"([12], log(2))\n[[12], {s: 1/2}]\n\n([12], log(2))\n[[12], {s: 1/2}]\n\n([12], log(2))\n[[12], {s: 1/2}]\n\n([12], log(2))\n[[12], {s: 1/2}]\n\n([1, 12], log(2))\n[[1, 12], {s: 1/2, r1: r669}]\n\n([1, 12], log(2))\n[[1, 12], {s: 1/2, r1: r670}]\n\n([1, 12], log(2))\n[[1, 12], {s: 1/2, r1: r671}]\n\n([1, 12], log(2))\n[[1, 12], {s: 1/2, r1: r672}]\n\n([6, 12], log(2))\n[[6, 12], {s: 1/2, r1: r673}]\n\n([6, 12], log(2))\n[[6, 12], {s: 1/2, r1: r674}]\n\n([6, 12], log(2))\n[[6, 12], {s: 1/2, r1: r675}]\n\n([6, 12], log(2))"}︡{"stdout":"\n[[6, 12], {s: 1/2, r1: r676}]\n\n([9, 12], log(-2/(sqrt(5) - 3)))\n[[9, 12], {s: -1/2*sqrt(5) + 3/2, r1: 6/5*sqrt(5) - 2}]\n\n([9, 12], log(2/(sqrt(5) - 1)))\n[[9, 12], {s: 1/2*sqrt(5) - 1/2, r1: 6/5*sqrt(5) - 2}]\n\n([12, 13], log(-2/(sqrt(5) - 3)))\n[[12, 13], {s: -1/2*sqrt(5) + 3/2, r1: -6/5*sqrt(5) + 3}]\n\n([12, 13], log(2/(sqrt(5) - 1)))"}︡{"stdout":"\n[[12, 13], {s: 1/2*sqrt(5) - 1/2, r1: -6/5*sqrt(5) + 3}]\n\n([12, 19], log(-2/(sqrt(5) - 3)))\n[[12, 19], {s: -1/2*sqrt(5) + 3/2, r1: -6/5*sqrt(5) + 3}]\n\n([12, 19], log(2/(sqrt(5) - 1)))\n[[12, 19], {s: 1/2*sqrt(5) - 1/2, r1: -6/5*sqrt(5) + 3}]\n\n([12, 20], log(-2/(sqrt(5) - 3)))\n[[12, 20], {s: -1/2*sqrt(5) + 3/2, r1: -6/5*sqrt(5) + 3}]\n\n([12, 20], log(2/(sqrt(5) - 1)))"}︡{"stdout":"\n[[12, 20], {s: 1/2*sqrt(5) - 1/2, r1: -6/5*sqrt(5) + 3}]\n\n([1, 12, 14], log(2))\n[[1, 12, 14], {s: 1/2, r2: r685, r1: -r685 + 1}]\n\n([1, 12, 14], log(2))\n[[1, 12, 14], {s: 1/2, r2: r686, r1: -r686 + 1}]\n\n([1, 12, 16], log(2))\n[[1, 12, 16], {s: 1/2, r2: r687, r1: -r687 + 1}]\n\n([1, 12, 16], log(2))\n[[1, 12, 16], {s: 1/2, r2: r688, r1: -r688 + 1}]\n\n([1, 12, 21], log(2))\n[[1, 12, 21], {s: 1/2, r2: r689, r1: -r689 + 1}]\n\n([1, 12, 21], log(2))\n[[1, 12, 21], {s: 1/2, r2: r690, r1: -r690 + 1}]\n\n([1, 12, 22], log(2))\n[[1, 12, 22], {s: 1/2, r2: r691, r1: -r691 + 1}]\n\n([1, 12, 22], log(2))\n[[1, 12, 22], {s: 1/2, r2: r692, r1: -r692 + 1}]\n\n([6, 12, 13], log(2))\n[[6, 12, 13], {s: 1/2, r2: r699, r1: -r699 + 1}]\n\n([6, 12, 13], log(2))\n[[6, 12, 13], {s: 1/2, r2: r700, r1: -r700 + 1}]\n\n([6, 12, 19], log(2))\n[[6, 12, 19], {s: 1/2, r2: r701, r1: -r701 + 1}]\n\n([6, 12, 19], log(2))"}︡{"stdout":"\n[[6, 12, 19], {s: 1/2, r2: r702, r1: -r702 + 1}]\n\n([6, 12, 20], log(2))\n[[6, 12, 20], {s: 1/2, r2: r703, r1: -r703 + 1}]\n\n([6, 12, 20], log(2))\n[[6, 12, 20], {s: 1/2, r2: r704, r1: -r704 + 1}]\n\n([7, 9, 12], log(-2/(sqrt(5) - 3)))\n[[7, 9, 12], {s: -1/2*sqrt(5) + 3/2, r2: 6/5*sqrt(5) - 2, r1: r710}]\n\n([7, 9, 12], log(2/(sqrt(5) - 1)))\n[[7, 9, 12], {s: 1/2*sqrt(5) - 1/2, r2: 6/5*sqrt(5) - 2, r1: r714}]\n\n([7, 9, 14], log(2/(sqrt(5) - 1)))"}︡{"stdout":"\n[[7, 9, 14], {s: 1/2*sqrt(5) - 1/2, r2: 6/5*sqrt(5) - 2, r1: -6/5*sqrt(5) + 3}]\n\n([7, 9, 14], log(-2/(sqrt(5) - 3)))\n[[7, 9, 14], {s: -1/2*sqrt(5) + 3/2, r2: 6/5*sqrt(5) - 2, r1: -6/5*sqrt(5) + 3}]\n\n([7, 12, 19], log(2/(sqrt(5) - 1)))\n[[7, 12, 19], {s: 1/2*sqrt(5) - 1/2, r2: r717, r1: -r717 - 6/5*sqrt(5) + 3}]\n\n([7, 12, 19], log(-2/(sqrt(5) - 3)))\n[[7, 12, 19], {s: -1/2*sqrt(5) + 3/2, r2: r720, r1: -r720 - 6/5*sqrt(5) + 3}]\n\n([7, 19, 21], log(-2/(sqrt(5) - 3)))"}︡{"stdout":"\n[[7, 19, 21], {s: -1/2*sqrt(5) + 3/2, r2: 6/5*sqrt(5) - 2, r1: -6/5*sqrt(5) + 3}]\n\n([7, 19, 21], log(2/(sqrt(5) - 1)))\n[[7, 19, 21], {s: 1/2*sqrt(5) - 1/2, r2: 6/5*sqrt(5) - 2, r1: -6/5*sqrt(5) + 3}]\n\n([8, 12, 13], log(-2/(sqrt(5) - 3)))\n[[8, 12, 13], {s: -1/2*sqrt(5) + 3/2, r2: r725, r1: -r725 - 6/5*sqrt(5) + 3}]\n\n([8, 12, 13], log(2/(sqrt(5) - 1)))\n[[8, 12, 13], {s: 1/2*sqrt(5) - 1/2, r2: r729, r1: -r729 - 6/5*sqrt(5) + 3}]\n\n([8, 12, 20], log(2/(sqrt(5) - 1)))"}︡{"stdout":"\n[[8, 12, 20], {s: 1/2*sqrt(5) - 1/2, r2: r731, r1: -r731 - 6/5*sqrt(5) + 3}]\n\n([8, 12, 20], log(-2/(sqrt(5) - 3)))\n[[8, 12, 20], {s: -1/2*sqrt(5) + 3/2, r2: r734, r1: -r734 - 6/5*sqrt(5) + 3}]\n\n([8, 13, 16], log(2/(sqrt(5) - 1)))\n[[8, 13, 16], {s: 1/2*sqrt(5) - 1/2, r2: 6/5*sqrt(5) - 2, r1: -6/5*sqrt(5) + 3}]\n\n([8, 13, 16], log(-2/(sqrt(5) - 3)))\n[[8, 13, 16], {s: -1/2*sqrt(5) + 3/2, r2: 6/5*sqrt(5) - 2, r1: -6/5*sqrt(5) + 3}]\n\n([8, 20, 22], log(-2/(sqrt(5) - 3)))\n[[8, 20, 22], {s: -1/2*sqrt(5) + 3/2, r2: 6/5*sqrt(5) - 2, r1: -6/5*sqrt(5) + 3}]\n\n([8, 20, 22], log(2/(sqrt(5) - 1)))"}︡{"stdout":"\n[[8, 20, 22], {s: 1/2*sqrt(5) - 1/2, r2: 6/5*sqrt(5) - 2, r1: -6/5*sqrt(5) + 3}]\n\n([9, 12, 13], log(-2/(sqrt(5) - 3)))\n[[9, 12, 13], {s: -1/2*sqrt(5) + 3/2, r2: -6/5*sqrt(5) + 3, r1: r741}]\n\n([9, 12, 13], log(2/(sqrt(5) - 1)))\n[[9, 12, 13], {s: 1/2*sqrt(5) - 1/2, r2: -6/5*sqrt(5) + 3, r1: r745}]\n\n([9, 12, 14], log(2))\n[[9, 12, 14], {s: 1/2, r2: r747, r1: r747 - 1}]\n\n([9, 12, 14], log(2))\n[[9, 12, 14], {s: 1/2, r2: r748, r1: r748 - 1}]\n\n([12, 13, 16], log(2))\n[[12, 13, 16], {s: 1/2, r2: r749, r1: r749 + 1}]\n\n([12, 13, 16], log(2))"}︡{"stdout":"\n[[12, 13, 16], {s: 1/2, r2: r750, r1: r750 + 1}]\n\n([12, 19, 20], log(2/(sqrt(5) - 1)))\n[[12, 19, 20], {s: 1/2*sqrt(5) - 1/2, r2: r751, r1: -6/5*sqrt(5) + 3}]\n\n([12, 19, 20], log(-2/(sqrt(5) - 3)))\n[[12, 19, 20], {s: -1/2*sqrt(5) + 3/2, r2: r754, r1: -6/5*sqrt(5) + 3}]\n\n([12, 19, 21], log(2))\n[[12, 19, 21], {s: 1/2, r2: r757, r1: r757 + 1}]\n\n([12, 19, 21], log(2))\n[[12, 19, 21], {s: 1/2, r2: r758, r1: r758 + 1}]\n\n([12, 20, 22], log(2))\n[[12, 20, 22], {s: 1/2, r2: r759, r1: r759 + 1}]\n\n([12, 20, 22], log(2))"}︡{"stdout":"\n[[12, 20, 22], {s: 1/2, r2: r760, r1: r760 + 1}]\n\n"}︡{"done":true}
︠b71995a1-8e8f-4822-b36e-39f9e5d90492︠









