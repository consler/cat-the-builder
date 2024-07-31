.class public final Lorg/catrobat/catroid/retrofit/WebService$DefaultImpls;
.super Ljava/lang/Object;
.source "RetrofitWebServer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/retrofit/WebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static synthetic getFeaturedProjects$default(Lorg/catrobat/catroid/retrofit/WebService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lretrofit2/Call;
    .locals 3

    if-nez p7, :cond_5

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 44
    const-wide v0, 0x3ff1c28f5c28f5c3L    # 1.11

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 45
    const-string p2, "pocketcode"

    move-object p7, p2

    goto :goto_0

    .line 44
    :cond_1
    move-object p7, p2

    .line 45
    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 46
    const-string p3, "android"

    move-object v0, p3

    goto :goto_1

    .line 45
    :cond_2
    move-object v0, p3

    .line 46
    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 47
    const/16 p4, 0x14

    move v1, p4

    goto :goto_2

    .line 46
    :cond_3
    move v1, p4

    .line 47
    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 48
    const/4 p5, 0x0

    move v2, p5

    goto :goto_3

    .line 47
    :cond_4
    move v2, p5

    .line 48
    :goto_3
    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move p7, v2

    invoke-interface/range {p2 .. p7}, Lorg/catrobat/catroid/retrofit/WebService;->getFeaturedProjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    .line 0
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getFeaturedProjects"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getProjectCategories$default(Lorg/catrobat/catroid/retrofit/WebService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;
    .locals 2

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 53
    const-wide v0, 0x3ff1c28f5c28f5c3L    # 1.11

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 54
    const-string p2, "pocketcode"

    :cond_1
    invoke-interface {p0, p1, p2}, Lorg/catrobat/catroid/retrofit/WebService;->getProjectCategories(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getProjectCategories"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
