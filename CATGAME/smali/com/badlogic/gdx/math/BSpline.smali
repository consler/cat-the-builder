.class public Lcom/badlogic/gdx/math/BSpline;
.super Ljava/lang/Object;
.source "BSpline.java"

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


# static fields
.field private static final d6:F = 0.16666667f


# instance fields
.field public continuous:Z

.field public controlPoints:[Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public degree:I

.field public knots:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
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

    .line 178
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    return-void
.end method

.method public constructor <init>([Lcom/badlogic/gdx/math/Vector;IZ)V
    .locals 0
    .param p2, "degree"    # I
    .param p3, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;IZ)V"
        }
    .end annotation

    .line 181
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "controlPoints":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/BSpline;->set([Lcom/badlogic/gdx/math/Vector;IZ)Lcom/badlogic/gdx/math/BSpline;

    .line 183
    return-void
.end method

.method public static calculate(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 10
    .param p1, "t"    # F
    .param p3, "degree"    # I
    .param p4, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector<",
            "TT;>;>(TT;F[TT;IZTT;)TT;"
        }
    .end annotation

    .line 109
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p5, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    array-length v0, p2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    .line 110
    .local v0, "n":I
    :goto_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    .line 111
    .local v1, "u":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_1
    float-to-int v2, v1

    .line 112
    .local v2, "i":I
    :goto_1
    int-to-float v3, v2

    sub-float/2addr v1, v3

    .line 113
    move-object v3, p0

    move v4, v2

    move v5, v1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-static/range {v3 .. v9}, Lcom/badlogic/gdx/math/BSpline;->calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3
.end method

.method public static calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 6
    .param p1, "i"    # I
    .param p2, "u"    # F
    .param p4, "degree"    # I
    .param p5, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector<",
            "TT;>;>(TT;IF[TT;IZTT;)TT;"
        }
    .end annotation

    .line 144
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p6, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/4 v0, 0x3

    if-eq p4, v0, :cond_0

    .line 148
    return-object p0

    .line 146
    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/BSpline;->cubic(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static cubic(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
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

    .line 34
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p4, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    array-length v0, p2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x3

    .line 35
    .local v0, "n":I
    :goto_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    .line 36
    .local v1, "u":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_1
    float-to-int v2, v1

    .line 37
    .local v2, "i":I
    :goto_1
    int-to-float v3, v2

    sub-float/2addr v1, v3

    .line 38
    move-object v3, p0

    move v4, v2

    move v5, v1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/badlogic/gdx/math/BSpline;->cubic(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3
.end method

.method public static cubic(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 10
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

    .line 67
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p5, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    array-length v0, p3

    .line 68
    .local v0, "n":I
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p2

    .line 69
    .local v2, "dt":F
    mul-float v3, p2, p2

    .line 70
    .local v3, "t2":F
    mul-float v4, v3, p2

    .line 71
    .local v4, "t3":F
    aget-object v5, p3, p1

    invoke-interface {p0, v5}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v5

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v7, v4, v6

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v7, v8

    const v8, 0x3e2aaaab

    mul-float/2addr v7, v8

    invoke-interface {v5, v7}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    .line 72
    if-nez p4, :cond_0

    if-lez p1, :cond_1

    :cond_0
    add-int v5, v0, p1

    add-int/lit8 v5, v5, -0x1

    rem-int/2addr v5, v0

    aget-object v5, p3, v5

    invoke-interface {p5, v5}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v5

    mul-float v7, v2, v2

    mul-float/2addr v7, v2

    mul-float/2addr v7, v8

    invoke-interface {v5, v7}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 73
    :cond_1
    if-nez p4, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge p1, v5, :cond_3

    :cond_2
    add-int/lit8 v5, p1, 0x1

    rem-int/2addr v5, v0

    aget-object v5, p3, v5

    invoke-interface {p5, v5}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v5

    const/high16 v7, -0x3fc00000    # -3.0f

    mul-float/2addr v7, v4

    mul-float v9, v3, v6

    add-float/2addr v7, v9

    mul-float/2addr v6, p2

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    mul-float/2addr v7, v8

    invoke-interface {v5, v7}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 74
    :cond_3
    if-nez p4, :cond_4

    add-int/lit8 v1, v0, -0x2

    if-ge p1, v1, :cond_5

    :cond_4
    add-int/lit8 v1, p1, 0x2

    rem-int/2addr v1, v0

    aget-object v1, p3, v1

    invoke-interface {p5, v1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    mul-float/2addr v8, v4

    invoke-interface {v1, v8}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 75
    :cond_5
    return-object p0
.end method

.method public static cubic_derivative(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
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

    .line 50
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p4, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    array-length v0, p2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x3

    .line 51
    .local v0, "n":I
    :goto_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    .line 52
    .local v1, "u":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_1
    float-to-int v2, v1

    .line 53
    .local v2, "i":I
    :goto_1
    int-to-float v3, v2

    sub-float/2addr v1, v3

    .line 54
    move-object v3, p0

    move v4, v2

    move v5, v1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/badlogic/gdx/math/BSpline;->cubic(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3
.end method

.method public static cubic_derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
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

    .line 88
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p5, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    array-length v0, p3

    .line 89
    .local v0, "n":I
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    .line 90
    .local v1, "dt":F
    mul-float v2, p2, p2

    .line 91
    .local v2, "t2":F
    mul-float v3, v2, p2

    .line 92
    .local v3, "t3":F
    aget-object v4, p3, p1

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, p2

    sub-float/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    .line 93
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

    mul-float/2addr v5, v1

    mul-float/2addr v5, v1

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 94
    :cond_1
    const/high16 v4, 0x3f000000    # 0.5f

    if-nez p4, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge p1, v5, :cond_3

    :cond_2
    add-int/lit8 v5, p1, 0x1

    rem-int/2addr v5, v0

    aget-object v5, p3, v5

    invoke-interface {p5, v5}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v5

    const/high16 v6, -0x40400000    # -1.5f

    mul-float/2addr v6, v2

    add-float/2addr v6, p2

    add-float/2addr v6, v4

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 95
    :cond_3
    if-nez p4, :cond_4

    add-int/lit8 v5, v0, -0x2

    if-ge p1, v5, :cond_5

    :cond_4
    add-int/lit8 v5, p1, 0x2

    rem-int/2addr v5, v0

    aget-object v5, p3, v5

    invoke-interface {p5, v5}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v5

    mul-float/2addr v4, v2

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 96
    :cond_5
    return-object p0
.end method

.method public static derivative(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 10
    .param p1, "t"    # F
    .param p3, "degree"    # I
    .param p4, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector<",
            "TT;>;>(TT;F[TT;IZTT;)TT;"
        }
    .end annotation

    .line 126
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p5, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    array-length v0, p2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    .line 127
    .local v0, "n":I
    :goto_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    .line 128
    .local v1, "u":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_1
    float-to-int v2, v1

    .line 129
    .local v2, "i":I
    :goto_1
    int-to-float v3, v2

    sub-float/2addr v1, v3

    .line 130
    move-object v3, p0

    move v4, v2

    move v5, v1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-static/range {v3 .. v9}, Lcom/badlogic/gdx/math/BSpline;->derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3
.end method

.method public static derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 6
    .param p1, "i"    # I
    .param p2, "u"    # F
    .param p4, "degree"    # I
    .param p5, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector<",
            "TT;>;>(TT;IF[TT;IZTT;)TT;"
        }
    .end annotation

    .line 162
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p6, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/4 v0, 0x3

    if-eq p4, v0, :cond_0

    .line 166
    return-object p0

    .line 164
    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/BSpline;->cubic_derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public approxLength(I)F
    .locals 6
    .param p1, "samples"    # I

    .line 299
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    const/4 v0, 0x0

    .line 300
    .local v0, "tempLength":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 301
    iget-object v2, p0, Lcom/badlogic/gdx/math/BSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/math/BSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 302
    iget-object v2, p0, Lcom/badlogic/gdx/math/BSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    int-to-float v3, v1

    int-to-float v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/math/BSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 303
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/math/BSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/math/BSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->dst(Lcom/badlogic/gdx/math/Vector;)F

    move-result v2

    add-float/2addr v0, v2

    .line 300
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
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

    .line 257
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "v":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/BSpline;->nearest(Lcom/badlogic/gdx/math/Vector;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/BSpline;->approximate(Lcom/badlogic/gdx/math/Vector;I)F

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

    .line 265
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 266
    .local v2, "n":I
    iget-object v3, v0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector;

    .line 267
    .local v3, "nearest":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-object v4, v0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    if-lez v2, :cond_0

    add-int/lit8 v5, v2, -0x1

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    add-int/lit8 v5, v5, -0x1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector;

    .line 268
    .local v4, "previous":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-object v5, v0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v6, v2, 0x1

    iget v7, v0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    rem-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector;

    .line 269
    .local v5, "next":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-interface {v1, v4}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v6

    .line 270
    .local v6, "dstPrev2":F
    invoke-interface {v1, v5}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v7

    .line 272
    .local v7, "dstNext2":F
    cmpg-float v8, v7, v6

    if-gez v8, :cond_1

    .line 273
    move-object v8, v3

    .line 274
    .local v8, "P1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object v9, v5

    .line 275
    .local v9, "P2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v10, p1

    .local v10, "P3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    goto :goto_2

    .line 277
    .end local v8    # "P1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .end local v9    # "P2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .end local v10    # "P3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :cond_1
    move-object v8, v4

    .line 278
    .restart local v8    # "P1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object v9, v3

    .line 279
    .restart local v9    # "P2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v10, p1

    .line 280
    .restart local v10    # "P3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    if-lez v2, :cond_2

    add-int/lit8 v11, v2, -0x1

    goto :goto_1

    :cond_2
    iget v11, v0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    add-int/lit8 v11, v11, -0x1

    :goto_1
    move v2, v11

    .line 282
    :goto_2
    invoke-interface {v8, v9}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v11

    .line 283
    .local v11, "L1Sqr":F
    invoke-interface {v10, v9}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v12

    .line 284
    .local v12, "L2Sqr":F
    invoke-interface {v10, v8}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v13

    .line 285
    .local v13, "L3Sqr":F
    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 286
    .local v14, "L1":F
    add-float v15, v12, v11

    sub-float/2addr v15, v13

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, v14

    div-float v15, v15, v16

    .line 287
    .local v15, "s":F
    sub-float v16, v14, v15

    div-float v1, v16, v14

    move-object/from16 v16, v3

    .end local v3    # "nearest":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local v16, "nearest":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/4 v3, 0x0

    move-object/from16 v17, v4

    .end local v4    # "previous":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local v17, "previous":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 288
    .local v1, "u":F
    int-to-float v3, v2

    add-float/2addr v3, v1

    iget v4, v0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

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

    .line 261
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/BSpline;->nearest(Lcom/badlogic/gdx/math/Vector;II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/BSpline;->approximate(Lcom/badlogic/gdx/math/Vector;I)F

    move-result v0

    return v0
.end method

.method public bridge synthetic approximate(Ljava/lang/Object;)F
    .locals 0

    .line 22
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/BSpline;->approximate(Lcom/badlogic/gdx/math/Vector;)F

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

    .line 221
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    .line 222
    .local v0, "n":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    .line 223
    .local v1, "u":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_0
    float-to-int v2, v1

    .line 224
    .local v2, "i":I
    :goto_0
    int-to-float v3, v2

    sub-float/2addr v1, v3

    .line 225
    invoke-virtual {p0, p1, v2, v1}, Lcom/badlogic/gdx/math/BSpline;->derivativeAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3
.end method

.method public derivativeAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;
    .locals 8
    .param p2, "span"    # I
    .param p3, "u"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IF)TT;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/BSpline;->continuous:Z

    if-eqz v0, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/BSpline;->degree:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, p2

    move v2, v0

    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/math/BSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    iget v5, p0, Lcom/badlogic/gdx/math/BSpline;->degree:I

    iget-boolean v6, p0, Lcom/badlogic/gdx/math/BSpline;->continuous:Z

    iget-object v7, p0, Lcom/badlogic/gdx/math/BSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v1, p1

    move v3, p3

    invoke-static/range {v1 .. v7}, Lcom/badlogic/gdx/math/BSpline;->derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic derivativeAt(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 22
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/BSpline;->derivativeAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

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

    .line 294
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "v":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/BSpline;->approximate(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic locate(Ljava/lang/Object;)F
    .locals 0

    .line 22
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/BSpline;->locate(Lcom/badlogic/gdx/math/Vector;)F

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

    .line 235
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/math/BSpline;->nearest(Lcom/badlogic/gdx/math/Vector;II)I

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

    .line 240
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :goto_0
    if-gez p2, :cond_0

    .line 241
    iget v0, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    add-int/2addr p2, v0

    goto :goto_0

    .line 242
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    rem-int v0, p2, v0

    .line 243
    .local v0, "result":I
    iget-object v1, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v1

    .line 244
    .local v1, "dst":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 245
    add-int v3, p2, v2

    iget v4, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    rem-int/2addr v3, v4

    .line 246
    .local v3, "idx":I
    iget-object v4, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, v4}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v4

    .line 247
    .local v4, "d":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_1

    .line 248
    move v1, v4

    .line 249
    move v0, v3

    .line 244
    .end local v3    # "idx":I
    .end local v4    # "d":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public set([Lcom/badlogic/gdx/math/Vector;IZ)Lcom/badlogic/gdx/math/BSpline;
    .locals 11
    .param p2, "degree"    # I
    .param p3, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;IZ)",
            "Lcom/badlogic/gdx/math/BSpline;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "controlPoints":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_1

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_2

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    .line 189
    :cond_2
    iput-object p1, p0, Lcom/badlogic/gdx/math/BSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    .line 190
    iput p2, p0, Lcom/badlogic/gdx/math/BSpline;->degree:I

    .line 191
    iput-boolean p3, p0, Lcom/badlogic/gdx/math/BSpline;->continuous:Z

    .line 192
    array-length v0, p1

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    sub-int/2addr v0, p2

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    .line 193
    iget-object v2, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    if-nez v2, :cond_4

    .line 194
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v2, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    goto :goto_1

    .line 196
    :cond_4
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 199
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v2, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    if-ge v0, v2, :cond_6

    .line 200
    iget-object v2, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    if-eqz p3, :cond_5

    move v5, v0

    goto :goto_3

    :cond_5
    int-to-float v3, v0

    const/high16 v5, 0x3f000000    # 0.5f

    int-to-float v6, p2

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    float-to-int v3, v3

    move v5, v3

    :goto_3
    const/4 v6, 0x0

    iget-object v10, p0, Lcom/badlogic/gdx/math/BSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-static/range {v4 .. v10}, Lcom/badlogic/gdx/math/BSpline;->calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 202
    .end local v0    # "i":I
    :cond_6
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

    .line 207
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    .line 208
    .local v0, "n":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    .line 209
    .local v1, "u":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_0
    float-to-int v2, v1

    .line 210
    .local v2, "i":I
    :goto_0
    int-to-float v3, v2

    sub-float/2addr v1, v3

    .line 211
    invoke-virtual {p0, p1, v2, v1}, Lcom/badlogic/gdx/math/BSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3
.end method

.method public valueAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;
    .locals 8
    .param p2, "span"    # I
    .param p3, "u"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IF)TT;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/BSpline;->continuous:Z

    if-eqz v0, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/BSpline;->degree:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, p2

    move v2, v0

    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/math/BSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    iget v5, p0, Lcom/badlogic/gdx/math/BSpline;->degree:I

    iget-boolean v6, p0, Lcom/badlogic/gdx/math/BSpline;->continuous:Z

    iget-object v7, p0, Lcom/badlogic/gdx/math/BSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v1, p1

    move v3, p3

    invoke-static/range {v1 .. v7}, Lcom/badlogic/gdx/math/BSpline;->calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valueAt(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 22
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/BSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    return-object p1
.end method
