/* c_m3d.cpp autogenerated by split.py v0.3 at 2021-01-01 14:58:46.459661 */

#include "SComponent/c_m3d.h"

// cM3d_InDivPos1__FPC3VecPC3VecfP3Vec
// cM3d_InDivPos1(const Vec*, const Vec*, float, Vec*)
asm void cM3d_InDivPos1(const Vec*, const Vec*, float, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80268560.s"
}

// cM3d_InDivPos2__FPC3VecPC3VecfP3Vec
// cM3d_InDivPos2(const Vec*, const Vec*, float, Vec*)
asm void cM3d_InDivPos2(const Vec*, const Vec*, float, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_802685B0.s"
}

// cM3d_Len2dSq__Fffff
// cM3d_Len2dSq(float, float, float, float)
asm float cM3d_Len2dSq(float, float, float, float) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80268614.s"
}

// cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf
// cM3d_Len2dSqPntAndSegLine(float, float, float, float, float, float, float*, float*, float*)
asm bool cM3d_Len2dSqPntAndSegLine(float, float, float, float, float, float, float*, float*,
                                   float*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026862C.s"
}

// cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
// cM3d_Len3dSqPntAndSegLine(const cM3dGLin*, const Vec*, Vec*, float*)
asm bool cM3d_Len3dSqPntAndSegLine(const cM3dGLin*, const Vec*, Vec*, float*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80268710.s"
}

// cM3d_SignedLenPlaAndPos__FPC8cM3dGPlaPC3Vec
// cM3d_SignedLenPlaAndPos(const cM3dGPla*, const Vec*)
asm float cM3d_SignedLenPlaAndPos(const cM3dGPla*, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80268814.s"
}

// cM3d_VectorProduct2d__Fffffff
// cM3d_VectorProduct2d(float, float, float, float, float, float)
asm float cM3d_VectorProduct2d(float, float, float, float, float, float) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80268894.s"
}

// cM3d_VectorProduct__FPC4cXyzPC4cXyzPC4cXyzP4cXyz
// cM3d_VectorProduct(const cXyz*, const cXyz*, const cXyz*, cXyz*)
asm void cM3d_VectorProduct(const cXyz*, const cXyz*, const cXyz*, cXyz*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_802688B4.s"
}

// cM3d_CalcPla__FPC3VecPC3VecPC3VecP3VecPf
// cM3d_CalcPla(const Vec*, const Vec*, const Vec*, Vec*, float*)
asm void cM3d_CalcPla(const Vec*, const Vec*, const Vec*, Vec*, float*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026891C.s"
}

// cM3d_Cross_AabAab__FPC8cM3dGAabPC8cM3dGAab
// cM3d_Cross_AabAab(const cM3dGAab*, const cM3dGAab*)
asm bool cM3d_Cross_AabAab(const cM3dGAab*, const cM3dGAab*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_802689E8.s"
}

// cM3d_Cross_AabCyl__FPC8cM3dGAabPC8cM3dGCyl
// cM3d_Cross_AabCyl(const cM3dGAab*, const cM3dGCyl*)
asm bool cM3d_Cross_AabCyl(const cM3dGAab*, const cM3dGCyl*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80268B0C.s"
}

// cM3d_Cross_AabSph__FPC8cM3dGAabPC8cM3dGSph
// cM3d_Cross_AabSph(const cM3dGAab*, const cM3dGSph*)
asm bool cM3d_Cross_AabSph(const cM3dGAab*, const cM3dGSph*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80268BB4.s"
}

// cM3d_Check_LinLin__FPC8cM3dGLinPC8cM3dGLinPfPf
// cM3d_Check_LinLin(const cM3dGLin*, const cM3dGLin*, float*, float*)
asm int cM3d_Check_LinLin(const cM3dGLin*, const cM3dGLin*, float*, float*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80268C5C.s"
}

// cM3d_CrossInfLineVsInfPlane_proc__FffPC3VecPC3VecP3Vec
// cM3d_CrossInfLineVsInfPlane_proc(float, float, const Vec*, const Vec*, Vec*)
asm bool cM3d_CrossInfLineVsInfPlane_proc(float, float, const Vec*, const Vec*, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80268ED4.s"
}

// cM3d_Cross_LinPla__FPC8cM3dGLinPC8cM3dGPlaP3Vecbb
// cM3d_Cross_LinPla(const cM3dGLin*, const cM3dGPla*, Vec*, bool, bool)
asm bool cM3d_Cross_LinPla(const cM3dGLin*, const cM3dGPla*, Vec*, bool, bool) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80268F34.s"
}

// cM3d_Cross_MinMaxBoxLine__FPC3VecPC3VecPC3VecPC3Vec
// cM3d_Cross_MinMaxBoxLine(const Vec*, const Vec*, const Vec*, const Vec*)
asm bool cM3d_Cross_MinMaxBoxLine(const Vec*, const Vec*, const Vec*, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80269050.s"
}

// cM3d_InclusionCheckPosIn3PosBox3d__FPC3VecPC3VecPC3VecPC3Vecf
// cM3d_InclusionCheckPosIn3PosBox3d(const Vec*, const Vec*, const Vec*, const Vec*, float)
asm bool cM3d_InclusionCheckPosIn3PosBox3d(const Vec*, const Vec*, const Vec*, const Vec*, float) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80269C2C.s"
}

// cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
// cM3d_InclusionCheckPosIn3PosBox2d(float, float, float, float, float, float, float, float, float)
asm bool cM3d_InclusionCheckPosIn3PosBox2d(float, float, float, float, float, float, float, float,
                                           float) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80269D64.s"
}

// cM3d_CrossX_Tri__FPC8cM3dGTriPC3Vecf
// cM3d_CrossX_Tri(const cM3dGTri*, const Vec*, float)
asm bool cM3d_CrossX_Tri(const cM3dGTri*, const Vec*, float) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80269E18.s"
}

// cM3d_CrossX_Tri__FPC8cM3dGTriPC3Vec
// cM3d_CrossX_Tri(const cM3dGTri*, const Vec*)
asm bool cM3d_CrossX_Tri(const cM3dGTri*, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_80269FBC.s"
}

// cM3d_CrossX_LinTri_proc__FPC8cM3dGTriPC3Vec
// cM3d_CrossX_LinTri_proc(const cM3dGTri*, const Vec*)
asm bool cM3d_CrossX_LinTri_proc(const cM3dGTri*, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026A160.s"
}

// cM3d_CrossY_Tri__FPC8cM3dGTriPC3Vec
// cM3d_CrossY_Tri(const cM3dGTri*, const Vec*)
asm bool cM3d_CrossY_Tri(const cM3dGTri*, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026A2E4.s"
}

// cM3d_CrossY_LinTri_proc__FPC8cM3dGTriPC3Vec
// cM3d_CrossY_LinTri_proc(const cM3dGTri*, const Vec*)
asm bool cM3d_CrossY_LinTri_proc(const cM3dGTri*, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026A488.s"
}

// cM3d_CrossY_Tri__FRC3VecRC3VecRC3VecRC8cM3dGPlaPC3Vec
// cM3d_CrossY_Tri(const Vec&, const Vec&, const Vec&, const cM3dGPla&, const Vec*)
asm bool cM3d_CrossY_Tri(const Vec&, const Vec&, const Vec&, const cM3dGPla&, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026A60C.s"
}

// cM3d_CrossY_Tri_Front__FRC3VecRC3VecRC3VecPC3Vec
// cM3d_CrossY_Tri_Front(const Vec&, const Vec&, const Vec&, const Vec*)
asm bool cM3d_CrossY_Tri_Front(const Vec&, const Vec&, const Vec&, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026A7B8.s"
}

// cM3d_CrossY_Tri__FPC8cM3dGTriPC3VecPf
// cM3d_CrossY_Tri(const cM3dGTri*, const Vec*, float*)
asm bool cM3d_CrossY_Tri(const cM3dGTri*, const Vec*, float*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026A8C0.s"
}

// cM3d_CrossY_Tri__FPC8cM3dGTriPC3Vecf
// cM3d_CrossY_Tri(const cM3dGTri*, const Vec*, float)
asm bool cM3d_CrossY_Tri(const cM3dGTri*, const Vec*, float) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026A944.s"
}

// cM3d_CrossY_Tri__FPC8cM3dGTriPC3VecPC10cM3d_RangePf
// cM3d_CrossY_Tri(const cM3dGTri*, const Vec*, const cM3d_Range*, float*)
asm bool cM3d_CrossY_Tri(const cM3dGTri*, const Vec*, const cM3d_Range*, float*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026AAE8.s"
}

// cM3d_CrossZ_Tri__FPC8cM3dGTriPC3Vecf
// cM3d_CrossZ_Tri(const cM3dGTri*, const Vec*, float)
asm bool cM3d_CrossZ_Tri(const cM3dGTri*, const Vec*, float) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026ABD8.s"
}

// cM3d_CrossZ_Tri__FPC8cM3dGTriPC3Vec
// cM3d_CrossZ_Tri(const cM3dGTri*, const Vec*)
asm bool cM3d_CrossZ_Tri(const cM3dGTri*, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026AD7C.s"
}

// cM3d_CrossZ_LinTri_proc__FPC8cM3dGTriPC3Vec
// cM3d_CrossZ_LinTri_proc(const cM3dGTri*, const Vec*)
asm bool cM3d_CrossZ_LinTri_proc(const cM3dGTri*, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026AF20.s"
}

// cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
// cM3d_Cross_LinTri(const cM3dGLin*, const cM3dGTri*, Vec*, bool, bool)
asm bool cM3d_Cross_LinTri(const cM3dGLin*, const cM3dGTri*, Vec*, bool, bool) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026B0A4.s"
}

// cM3d_Cross_LinTri_Easy__FPC8cM3dGTriPC3Vec
// cM3d_Cross_LinTri_Easy(const cM3dGTri*, const Vec*)
asm bool cM3d_Cross_LinTri_Easy(const cM3dGTri*, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026B17C.s"
}

// cM3d_Cross_SphPnt__FPC8cM3dGSphPC3Vec
// cM3d_Cross_SphPnt(const cM3dGSph*, const Vec*)
asm bool cM3d_Cross_SphPnt(const cM3dGSph*, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026B238.s"
}

// cM3d_Cross_LinSph__FPC8cM3dGLinPC8cM3dGSphP3Vec
// cM3d_Cross_LinSph(const cM3dGLin*, const cM3dGSph*, Vec*)
asm bool cM3d_Cross_LinSph(const cM3dGLin*, const cM3dGSph*, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026B280.s"
}

// cM3d_Cross_LinSph_CrossPos__FRC8cM3dGSphRC8cM3dGLinP3VecP3Vec
// cM3d_Cross_LinSph_CrossPos(const cM3dGSph&, const cM3dGLin&, Vec*, Vec*)
asm int cM3d_Cross_LinSph_CrossPos(const cM3dGSph&, const cM3dGLin&, Vec*, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026B4E8.s"
}

// cM3d_Cross_CylSph__FPC8cM3dGCylPC8cM3dGSphPf
// cM3d_Cross_CylSph(const cM3dGCyl*, const cM3dGSph*, float*)
asm bool cM3d_Cross_CylSph(const cM3dGCyl*, const cM3dGSph*, float*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026B8A4.s"
}

// cM3d_Cross_CylSph__FPC8cM3dGCylPC8cM3dGSphP3VecPf
// cM3d_Cross_CylSph(const cM3dGCyl*, const cM3dGSph*, Vec*, float*)
asm bool cM3d_Cross_CylSph(const cM3dGCyl*, const cM3dGSph*, Vec*, float*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026BA48.s"
}

// cM3d_Cross_SphSph__FPC8cM3dGSphPC8cM3dGSphPf
// cM3d_Cross_SphSph(const cM3dGSph*, const cM3dGSph*, float*)
asm bool cM3d_Cross_SphSph(const cM3dGSph*, const cM3dGSph*, float*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026BC7C.s"
}

// cM3d_Cross_SphSph__FPC8cM3dGSphPC8cM3dGSphPfPf
// cM3d_Cross_SphSph(const cM3dGSph*, const cM3dGSph*, float*, float*)
asm bool cM3d_Cross_SphSph(const cM3dGSph*, const cM3dGSph*, float*, float*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026BCFC.s"
}

// cM3d_Cross_SphSph__FPC8cM3dGSphPC8cM3dGSphP3Vec
// cM3d_Cross_SphSph(const cM3dGSph*, const cM3dGSph*, Vec*)
asm void cM3d_Cross_SphSph(const cM3dGSph*, const cM3dGSph*, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026BD88.s"
}

// cM3d_CalcSphVsTriCrossPoint__FPC8cM3dGSphPC8cM3dGTriP3Vec
// cM3d_CalcSphVsTriCrossPoint(const cM3dGSph*, const cM3dGTri*, Vec*)
asm void cM3d_CalcSphVsTriCrossPoint(const cM3dGSph*, const cM3dGTri*, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026BE5C.s"
}

// cM3d_Cross_SphTri__FPC8cM3dGSphPC8cM3dGTriP3Vec
// cM3d_Cross_SphTri(const cM3dGSph*, const cM3dGTri*, Vec*)
asm bool cM3d_Cross_SphTri(const cM3dGSph*, const cM3dGTri*, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026BF04.s"
}

// cM3d_Cross_CylCyl__FPC8cM3dGCylPC8cM3dGCylPf
// cM3d_Cross_CylCyl(const cM3dGCyl*, const cM3dGCyl*, float*)
asm bool cM3d_Cross_CylCyl(const cM3dGCyl*, const cM3dGCyl*, float*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026C22C.s"
}

// cM3d_Cross_CylCyl__FPC8cM3dGCylPC8cM3dGCylP3Vec
// cM3d_Cross_CylCyl(const cM3dGCyl*, const cM3dGCyl*, Vec*)
asm bool cM3d_Cross_CylCyl(const cM3dGCyl*, const cM3dGCyl*, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026C3B4.s"
}

// cM3d_Cross_CylTri__FPC8cM3dGCylPC8cM3dGTriP3Vec
// cM3d_Cross_CylTri(const cM3dGCyl*, const cM3dGTri*, Vec*)
asm bool cM3d_Cross_CylTri(const cM3dGCyl*, const cM3dGTri*, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026C5D0.s"
}

// cM3d_Cross_CylLin__FPC8cM3dGCylPC8cM3dGLinP3VecP3Vec
// cM3d_Cross_CylLin(const cM3dGCyl*, const cM3dGLin*, Vec*, Vec*)
asm int cM3d_Cross_CylLin(const cM3dGCyl*, const cM3dGLin*, Vec*, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026C944.s"
}

// cM3d_Cross_CylPntPnt__FPC8cM3dGCylPC3VecPC3VecP3VecP3Vec
// cM3d_Cross_CylPntPnt(const cM3dGCyl*, const Vec*, const Vec*, Vec*, Vec*)
asm int cM3d_Cross_CylPntPnt(const cM3dGCyl*, const Vec*, const Vec*, Vec*, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026D044.s"
}

// cM3d_Cross_CylPnt__FPC8cM3dGCylPC3Vec
// cM3d_Cross_CylPnt(const cM3dGCyl*, const Vec*)
asm bool cM3d_Cross_CylPnt(const cM3dGCyl*, const Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026D0B0.s"
}

// cM3d_Cross_CpsCps__FRC8cM3dGCpsRC8cM3dGCpsP3Vec
// cM3d_Cross_CpsCps(const cM3dGCps&, const cM3dGCps&, Vec*)
asm bool cM3d_Cross_CpsCps(const cM3dGCps&, const cM3dGCps&, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026D114.s"
}

// cM3d_Cross_CpsCyl__FRC8cM3dGCpsRC8cM3dGCylP3Vec
// cM3d_Cross_CpsCyl(const cM3dGCps&, const cM3dGCyl&, Vec*)
asm bool cM3d_Cross_CpsCyl(const cM3dGCps&, const cM3dGCyl&, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026D3D4.s"
}

// cM3d_Cross_CpsSph_CrossPos__FRC8cM3dGCpsRC8cM3dGSphRC3VecP3Vec
// cM3d_Cross_CpsSph_CrossPos(const cM3dGCps&, const cM3dGSph&, const Vec&, Vec*)
asm bool cM3d_Cross_CpsSph_CrossPos(const cM3dGCps&, const cM3dGSph&, const Vec&, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026DAE0.s"
}

// cM3d_Cross_CpsSph__FRC8cM3dGCpsRC8cM3dGSphP3Vec
// cM3d_Cross_CpsSph(const cM3dGCps&, const cM3dGSph&, Vec*)
asm bool cM3d_Cross_CpsSph(const cM3dGCps&, const cM3dGSph&, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026DC3C.s"
}

// cM3d_Cross_TriTri__FRC8cM3dGTriRC8cM3dGTriP3Vec
// cM3d_Cross_TriTri(const cM3dGTri&, const cM3dGTri&, Vec*)
asm bool cM3d_Cross_TriTri(const cM3dGTri&, const cM3dGTri&, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026DE2C.s"
}

// cM3d_Cross_CpsTri__FRC8cM3dGCps8cM3dGTriP3Vec
// cM3d_Cross_CpsTri(const cM3dGCps&, cM3dGTri, Vec*)
asm bool cM3d_Cross_CpsTri(const cM3dGCps&, cM3dGTri, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026E12C.s"
}

// cM3d_CalcVecAngle__FRC3VecPsPs
// cM3d_CalcVecAngle(const Vec&, short*, short*)
asm void cM3d_CalcVecAngle(const Vec&, short*, short*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026E4FC.s"
}

// cM3d_CalcVecZAngle__FRC3VecP5csXyz
// cM3d_CalcVecZAngle(const Vec&, csXyz*)
asm void cM3d_CalcVecZAngle(const Vec&, csXyz*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026E570.s"
}

// cM3d_PlaneCrossLineProcWork__FfffffffPfPf
// cM3d_PlaneCrossLineProcWork(float, float, float, float, float, float, float, float*, float*)
asm void cM3d_PlaneCrossLineProcWork(float, float, float, float, float, float, float, float*,
                                     float*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026E6C4.s"
}

// cM3d_2PlaneCrossLine__FRC8cM3dGPlaRC8cM3dGPlaP8cM3dGLin
// cM3d_2PlaneCrossLine(const cM3dGPla&, const cM3dGPla&, cM3dGLin*)
asm int cM3d_2PlaneCrossLine(const cM3dGPla&, const cM3dGPla&, cM3dGLin*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026E6F0.s"
}

// cM3d_3PlaneCrossPos__FRC8cM3dGPlaRC8cM3dGPlaRC8cM3dGPlaP3Vec
// cM3d_3PlaneCrossPos(const cM3dGPla&, const cM3dGPla&, const cM3dGPla&, Vec*)
asm bool cM3d_3PlaneCrossPos(const cM3dGPla&, const cM3dGPla&, const cM3dGPla&, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026E8A0.s"
}

// cM3d_lineVsPosSuisenCross__FPC8cM3dGLinPC3VecP3Vec
// cM3d_lineVsPosSuisenCross(const cM3dGLin*, const Vec*, Vec*)
asm float cM3d_lineVsPosSuisenCross(const cM3dGLin*, const Vec*, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026E980.s"
}

// cM3d_lineVsPosSuisenCross__FRC3VecRC3VecRC3VecP3Vec
// cM3d_lineVsPosSuisenCross(const Vec&, const Vec&, const Vec&, Vec*)
asm float cM3d_lineVsPosSuisenCross(const Vec&, const Vec&, const Vec&, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026EA5C.s"
}

// cM3d_2PlaneLinePosNearPos__FRC8cM3dGPlaRC8cM3dGPlaPC3VecP3Vec
// cM3d_2PlaneLinePosNearPos(const cM3dGPla&, const cM3dGPla&, const Vec*, Vec*)
asm int cM3d_2PlaneLinePosNearPos(const cM3dGPla&, const cM3dGPla&, const Vec*, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026EB38.s"
}

// cM3d_CrawVec__FRC3VecRC3VecP3Vec
// cM3d_CrawVec(const Vec&, const Vec&, Vec*)
asm void cM3d_CrawVec(const Vec&, const Vec&, Vec*) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026EBBC.s"
}

extern "C" {

// __sinit_c_m3d_cpp
//
asm void __sinit_c_m3d_cpp(void) {
    nofralloc
#include "SComponent/c_m3d/asm/func_8026EC3C.s"
}
};
