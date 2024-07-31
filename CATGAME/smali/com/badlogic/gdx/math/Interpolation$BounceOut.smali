.class public Lcom/badlogic/gdx/math/Interpolation$BounceOut;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BounceOut"
.end annotation


# instance fields
.field final heights:[F

.field final widths:[F


# direct methods
.method public constructor <init>(I)V
    .locals 11
    .param p1, "bounces"    # I

    .line 318
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 319
    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    const/4 v1, 0x5

    if-gt p1, v1, :cond_4

    .line 320
    new-array v2, p1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    .line 321
    new-array v3, p1, [F

    iput-object v3, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    .line 322
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 323
    const v4, 0x3ea8f5c3    # 0.33f

    const v6, 0x3ecccccd    # 0.4f

    const/4 v7, 0x1

    if-eq p1, v0, :cond_3

    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v10, 0x3

    if-eq p1, v10, :cond_2

    const v4, 0x3e19999a    # 0.15f

    const/4 v6, 0x4

    if-eq p1, v6, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    const v1, 0x3e99999a    # 0.3f

    aput v1, v2, v5

    .line 347
    aput v1, v2, v7

    .line 348
    aput v9, v2, v0

    .line 349
    aput v8, v2, v10

    .line 350
    aput v8, v2, v6

    .line 351
    const v2, 0x3ee66666    # 0.45f

    aput v2, v3, v7

    .line 352
    aput v1, v3, v0

    .line 353
    aput v4, v3, v10

    .line 354
    const v0, 0x3d75c28f    # 0.06f

    aput v0, v3, v6

    goto :goto_0

    .line 337
    :cond_1
    const v1, 0x3eae147b    # 0.34f

    aput v1, v2, v5

    .line 338
    aput v1, v2, v7

    .line 339
    aput v9, v2, v0

    .line 340
    aput v4, v2, v10

    .line 341
    const v1, 0x3e851eb8    # 0.26f

    aput v1, v3, v7

    .line 342
    const v1, 0x3de147ae    # 0.11f

    aput v1, v3, v0

    .line 343
    const v0, 0x3cf5c28f    # 0.03f

    aput v0, v3, v10

    .line 344
    goto :goto_0

    .line 330
    :cond_2
    aput v6, v2, v5

    .line 331
    aput v6, v2, v7

    .line 332
    aput v9, v2, v0

    .line 333
    aput v4, v3, v7

    .line 334
    aput v8, v3, v0

    .line 335
    goto :goto_0

    .line 325
    :cond_3
    const v0, 0x3f19999a    # 0.6f

    aput v0, v2, v5

    .line 326
    aput v6, v2, v7

    .line 327
    aput v4, v3, v7

    .line 328
    nop

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aget v1, v0, v5

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    aput v1, v0, v5

    .line 358
    return-void

    .line 319
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bounces cannot be < 2 or > 5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([F[F)V
    .locals 2
    .param p1, "widths"    # [F
    .param p2, "heights"    # [F

    .line 311
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 312
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 314
    iput-object p1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    .line 315
    iput-object p2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    .line 316
    return-void

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be the same number of widths and heights."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(F)F
    .locals 6
    .param p1, "a"    # F

    .line 361
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p1, v2

    .line 363
    const/4 v2, 0x0

    .local v2, "width":F
    const/4 v3, 0x0

    .line 364
    .local v3, "height":F
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v1, v1

    .local v1, "n":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 365
    iget-object v5, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aget v2, v5, v4

    .line 366
    cmpg-float v5, p1, v2

    if-gtz v5, :cond_1

    .line 367
    iget-object v5, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    aget v3, v5, v4

    .line 368
    goto :goto_1

    .line 370
    :cond_1
    sub-float/2addr p1, v2

    .line 364
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "n":I
    .end local v4    # "i":I
    :cond_2
    :goto_1
    div-float/2addr p1, v2

    .line 373
    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    mul-float/2addr v1, p1

    .line 374
    .local v1, "z":F
    mul-float v4, v1, p1

    sub-float v4, v1, v4

    mul-float/2addr v4, v2

    sub-float/2addr v0, v4

    return v0
.end method
