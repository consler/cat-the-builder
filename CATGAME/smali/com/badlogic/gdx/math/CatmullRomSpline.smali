.class public Lcom/badlogic/gdx/math/CatmullRomSpline;
.super Ljava/lang/Object;
.source "CatmullRomSpline.java"

# interfaces
.implements Lcom/badlogic/gdx/math/Path;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/math/Path<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public continuous:Z

.field public controlPoints:[Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public spanCount:I

.field private tmp:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private tmp2:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private tmp3:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public constructor <init>([Lcom/badlogic/gdx/math/Vector;Z)V
    .locals 0
    .param p2, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "controlPoints":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->set([Lcom/badlogic/gdx/math/Vector;Z)Lcom/badlogic/gdx/math/CatmullRomSpline;

    .line 108
    return-void
.end method

.method public static calculate(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 9
    .param p1, "t"    # F
    .param p3, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector<",
            "TT;>;>(TT;F[TT;ZTT;)TT;"
        }
    .end annotation

    .line 30
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p4, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    array-length v0, p2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x3

    .line 31
    .local v0, "n":I
    :goto_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    .line 32
    .local v1, "u":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_1
    float-to-int v2, v1

    .line 33
    .local v2, "i":I
    :goto_1
    int-to-float v3, v2

    sub-float/2addr v1, v3

    .line 34
    move-object v3, p0

    move v4, v2

    move v5, v1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/badlogic/gdx/math/CatmullRomSpline;->calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3
.end method

.method public static calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 7
    .param p1, "i"    # I
    .param p2, "u"    # F
    .param p4, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector<",
            "TT;>;>(TT;IF[TT;ZTT;)TT;"
        }
    .end annotation

    .line 47
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p5, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    array-length v0, p3

    .line 48
    .local v0, "n":I
    mul-float v1, p2, p2

    .line 49
    .local v1, "u2":F
    mul-float v2, v1, p2

    .line 50
    .local v2, "u3":F
    aget-object v3, p3, p1

    invoke-interface {p0, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v2

    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    .line 51
    const/high16 v3, 0x3f000000    # 0.5f

    if-nez p4, :cond_0

    if-lez p1, :cond_1

    :cond_0
    add-int v4, v0, p1

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v0

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    const/high16 v5, -0x41000000    # -0.5f

    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    mul-float v6, p2, v3

    sub-float/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 52
    :cond_1
    if-nez p4, :cond_2

    add-int/lit8 v4, v0, -0x1

    if-ge p1, v4, :cond_3

    :cond_2
    add-int/lit8 v4, p1, 0x1

    rem-int/2addr v4, v0

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    const/high16 v5, -0x40400000    # -1.5f

    mul-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    mul-float v6, p2, v3

    add-float/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 53
    :cond_3
    if-nez p4, :cond_4

    add-int/lit8 v4, v0, -0x2

    if-ge p1, v4, :cond_5

    :cond_4
    add-int/lit8 v4, p1, 0x2

    rem-int/2addr v4, v0

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    mul-float v5, v2, v3

    mul-float/2addr v3, v1

    sub-float/2addr v5, v3

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 54
    :cond_5
    return-object p0
.end method

.method public static derivative(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 9
    .param p1, "t"    # F
    .param p3, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector<",
            "TT;>;>(TT;F[TT;ZTT;)TT;"
        }
    .end annotation

    .line 66
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p4, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    array-length v0, p2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x3

    .line 67
    .local v0, "n":I
    :goto_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    .line 68
    .local v1, "u":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_1
    float-to-int v2, v1

    .line 69
    .local v2, "i":I
    :goto_1
    int-to-float v3, v2

    sub-float/2addr v1, v3

    .line 70
    move-object v3, p0

    move v4, v2

    move v5, v1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/badlogic/gdx/math/CatmullRomSpline;->derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3
.end method

.method public static derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 7
    .param p1, "i"    # I
    .param p2, "u"    # F
    .param p4, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector<",
            "TT;>;>(TT;IF[TT;ZTT;)TT;"
        }
    .end annotation

    .line 86
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p5, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    array-length v0, p3

    .line 87
    .local v0, "n":I
    mul-float v1, p2, p2

    .line 89
    .local v1, "u2":F
    aget-object v2, p3, p1

    invoke-interface {p0, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    neg-float v3, p2

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40900000    # 4.5f

    mul-float v5, v1, v4

    add-float/2addr v3, v5

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    .line 90
    const/high16 v2, 0x3fc00000    # 1.5f

    if-nez p4, :cond_0

    if-lez p1, :cond_1

    :cond_0
    add-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v3, v0

    aget-object v3, p3, v3

    invoke-interface {p5, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    const/high16 v5, -0x41000000    # -0.5f

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, p2

    add-float/2addr v6, v5

    mul-float v5, v1, v2

    sub-float/2addr v6, v5

    invoke-interface {v3, v6}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 91
    :cond_1
    if-nez p4, :cond_2

    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_3

    :cond_2
    add-int/lit8 v3, p1, 0x1

    rem-int/2addr v3, v0

    aget-object v3, p3, v3

    invoke-interface {p5, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, p2

    add-float/2addr v6, v5

    mul-float/2addr v4, v1

    sub-float/2addr v6, v4

    invoke-interface {v3, v6}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 92
    :cond_3
    if-nez p4, :cond_4

    add-int/lit8 v3, v0, -0x2

    if-ge p1, v3, :cond_5

    :cond_4
    add-int/lit8 v3, p1, 0x2

    rem-int/2addr v3, v0

    aget-object v3, p3, v3

    invoke-interface {p5, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    neg-float v4, p2

    mul-float/2addr v2, v1

    add-float/2addr v4, v2

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 93
    :cond_5
    return-object p0
.end method


# virtual methods
.method public approxLength(I)F
    .locals 6
    .param p1, "samples"    # I

    .line 213
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    const/4 v0, 0x0

    .line 214
    .local v0, "tempLength":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 215
    iget-object v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 216
    iget-object v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    int-to-float v3, v1

    int-to-float v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 217
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->dst(Lcom/badlogic/gdx/math/Vector;)F

    move-result v2

    add-float/2addr v0, v2

    .line 214
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public approximate(Lcom/badlogic/gdx/math/Vector;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "v":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->nearest(Lcom/badlogic/gdx/math/Vector;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;->approximate(Lcom/badlogic/gdx/math/Vector;I)F

    move-result v0

    return v0
.end method

.method public approximate(Lcom/badlogic/gdx/math/Vector;I)F
    .locals 18
    .param p2, "near"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)F"
        }
    .end annotation

    .line 180
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 181
    .local v2, "n":I
    iget-object v3, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    aget-object v4, v3, v2

    .line 182
    .local v4, "nearest":Lcom/badlogic/gdx/math/Vector;, "TT;"
    if-lez v2, :cond_0

    add-int/lit8 v5, v2, -0x1

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    add-int/lit8 v5, v5, -0x1

    :goto_0
    aget-object v3, v3, v5

    .line 183
    .local v3, "previous":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-object v5, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v6, v2, 0x1

    iget v7, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    rem-int/2addr v6, v7

    aget-object v5, v5, v6

    .line 184
    .local v5, "next":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-interface {v1, v3}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v6

    .line 185
    .local v6, "dstPrev2":F
    invoke-interface {v1, v5}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v7

    .line 187
    .local v7, "dstNext2":F
    cmpg-float v8, v7, v6

    if-gez v8, :cond_1

    .line 188
    move-object v8, v4

    .line 189
    .local v8, "P1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object v9, v5

    .line 190
    .local v9, "P2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v10, p1

    .local v10, "P3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    goto :goto_2

    .line 192
    .end local v8    # "P1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .end local v9    # "P2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .end local v10    # "P3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :cond_1
    move-object v8, v3

    .line 193
    .restart local v8    # "P1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object v9, v4

    .line 194
    .restart local v9    # "P2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v10, p1

    .line 195
    .restart local v10    # "P3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    if-lez v2, :cond_2

    add-int/lit8 v11, v2, -0x1

    goto :goto_1

    :cond_2
    iget v11, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    add-int/lit8 v11, v11, -0x1

    :goto_1
    move v2, v11

    .line 197
    :goto_2
    invoke-interface {v8, v9}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v11

    .line 198
    .local v11, "L1Sqr":F
    invoke-interface {v10, v9}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v12

    .line 199
    .local v12, "L2Sqr":F
    invoke-interface {v10, v8}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v13

    .line 200
    .local v13, "L3Sqr":F
    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 201
    .local v14, "L1":F
    add-float v15, v12, v11

    sub-float/2addr v15, v13

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, v14

    div-float v15, v15, v16

    .line 202
    .local v15, "s":F
    sub-float v16, v14, v15

    div-float v1, v16, v14

    move-object/from16 v16, v3

    .end local v3    # "previous":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local v16, "previous":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/4 v3, 0x0

    move-object/from16 v17, v4

    .end local v4    # "nearest":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local v17, "nearest":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 203
    .local v1, "u":F
    int-to-float v3, v2

    add-float/2addr v3, v1

    iget v4, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    return v3
.end method

.method public approximate(Lcom/badlogic/gdx/math/Vector;II)F
    .locals 1
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)F"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/CatmullRomSpline;->nearest(Lcom/badlogic/gdx/math/Vector;II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;->approximate(Lcom/badlogic/gdx/math/Vector;I)F

    move-result v0

    return v0
.end method

.method public bridge synthetic approximate(Ljava/lang/Object;)F
    .locals 0

    .line 20
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->approximate(Lcom/badlogic/gdx/math/Vector;)F

    move-result p1

    return p1
.end method

.method public derivativeAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 4
    .param p2, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    .line 137
    .local v0, "n":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    .line 138
    .local v1, "u":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_0
    float-to-int v2, v1

    .line 139
    .local v2, "i":I
    :goto_0
    int-to-float v3, v2

    sub-float/2addr v1, v3

    .line 140
    invoke-virtual {p0, p1, v2, v1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->derivativeAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3
.end method

.method public derivativeAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;
    .locals 7
    .param p2, "span"    # I
    .param p3, "u"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IF)TT;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    if-eqz v0, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    move v2, v0

    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    iget-boolean v5, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    iget-object v6, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v1, p1

    move v3, p3

    invoke-static/range {v1 .. v6}, Lcom/badlogic/gdx/math/CatmullRomSpline;->derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic derivativeAt(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 20
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->derivativeAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public locate(Lcom/badlogic/gdx/math/Vector;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "v":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->approximate(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic locate(Ljava/lang/Object;)F
    .locals 0

    .line 20
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->locate(Lcom/badlogic/gdx/math/Vector;)F

    move-result p1

    return p1
.end method

.method public nearest(Lcom/badlogic/gdx/math/Vector;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 150
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;->nearest(Lcom/badlogic/gdx/math/Vector;II)I

    move-result v0

    return v0
.end method

.method public nearest(Lcom/badlogic/gdx/math/Vector;II)I
    .locals 6
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)I"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :goto_0
    if-gez p2, :cond_0

    .line 156
    iget v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    add-int/2addr p2, v0

    goto :goto_0

    .line 157
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    rem-int v0, p2, v0

    .line 158
    .local v0, "result":I
    iget-object v1, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v1

    .line 159
    .local v1, "dst":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 160
    add-int v3, p2, v2

    iget v4, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    rem-int/2addr v3, v4

    .line 161
    .local v3, "idx":I
    iget-object v4, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    aget-object v4, v4, v3

    invoke-interface {p1, v4}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v4

    .line 162
    .local v4, "d":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_1

    .line 163
    move v1, v4

    .line 164
    move v0, v3

    .line 159
    .end local v3    # "idx":I
    .end local v4    # "d":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 167
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public set([Lcom/badlogic/gdx/math/Vector;Z)Lcom/badlogic/gdx/math/CatmullRomSpline;
    .locals 2
    .param p2, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)",
            "Lcom/badlogic/gdx/math/CatmullRomSpline;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "controlPoints":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_1

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_2

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    .line 114
    :cond_2
    iput-object p1, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    .line 115
    iput-boolean p2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    .line 116
    array-length v0, p1

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    .line 117
    return-object p0
.end method

.method public valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 4
    .param p2, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    .line 123
    .local v0, "n":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    .line 124
    .local v1, "u":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_0
    float-to-int v2, v1

    .line 125
    .local v2, "i":I
    :goto_0
    int-to-float v3, v2

    sub-float/2addr v1, v3

    .line 126
    invoke-virtual {p0, p1, v2, v1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3
.end method

.method public valueAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;
    .locals 7
    .param p2, "span"    # I
    .param p3, "u"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IF)TT;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    if-eqz v0, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    move v2, v0

    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    iget-boolean v5, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    iget-object v6, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v1, p1

    move v3, p3

    invoke-static/range {v1 .. v6}, Lcom/badlogic/gdx/math/CatmullRomSpline;->calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valueAt(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 20
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    return-object p1
.end method
