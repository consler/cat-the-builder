.class public final Lorg/catrobat/catroid/common/ParameterizedData;
.super Ljava/lang/Object;
.source "ParameterizedData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B?\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0008\u0002\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007\u0012\u000c\u0008\u0002\u0010\u0008\u001a\u00060\u0006j\u0002`\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010\u001c\u001a\u00020\u001dR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u001e\u0010\u0008\u001a\u00060\u0006j\u0002`\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017\u00a8\u0006\u001e"
    }
    d2 = {
        "Lorg/catrobat/catroid/common/ParameterizedData;",
        "",
        "currentPosition",
        "",
        "listSize",
        "failMessages",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "successMessages",
        "currentParameters",
        "",
        "(IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;)V",
        "getCurrentParameters",
        "()Ljava/lang/String;",
        "setCurrentParameters",
        "(Ljava/lang/String;)V",
        "getCurrentPosition",
        "()I",
        "setCurrentPosition",
        "(I)V",
        "getFailMessages",
        "()Ljava/lang/StringBuilder;",
        "setFailMessages",
        "(Ljava/lang/StringBuilder;)V",
        "getListSize",
        "setListSize",
        "getSuccessMessages",
        "setSuccessMessages",
        "reset",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private currentParameters:Ljava/lang/String;

.field private currentPosition:I

.field private failMessages:Ljava/lang/StringBuilder;

.field private listSize:I

.field private successMessages:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/catrobat/catroid/common/ParameterizedData;-><init>(IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "currentPosition"    # I
    .param p2, "listSize"    # I
    .param p3, "failMessages"    # Ljava/lang/StringBuilder;
    .param p4, "successMessages"    # Ljava/lang/StringBuilder;
    .param p5, "currentParameters"    # Ljava/lang/String;

    const-string v0, "failMessages"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successMessages"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentParameters"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/catroid/common/ParameterizedData;->currentPosition:I

    iput p2, p0, Lorg/catrobat/catroid/common/ParameterizedData;->listSize:I

    iput-object p3, p0, Lorg/catrobat/catroid/common/ParameterizedData;->failMessages:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lorg/catrobat/catroid/common/ParameterizedData;->successMessages:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lorg/catrobat/catroid/common/ParameterizedData;->currentParameters:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 27
    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 28
    const/4 p2, 0x1

    move p7, p2

    goto :goto_0

    .line 27
    :cond_1
    move p7, p2

    .line 28
    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p3

    goto :goto_1

    .line 28
    :cond_2
    move-object v0, p3

    .line 29
    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 30
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p4

    goto :goto_2

    .line 29
    :cond_3
    move-object v1, p4

    .line 30
    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 31
    const-string p5, ""

    move-object v2, p5

    goto :goto_3

    .line 30
    :cond_4
    move-object v2, p5

    .line 31
    :goto_3
    move-object p2, p0

    move p3, p1

    move p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-direct/range {p2 .. p7}, Lorg/catrobat/catroid/common/ParameterizedData;-><init>(IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCurrentParameters()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/catroid/common/ParameterizedData;->currentParameters:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentPosition()I
    .locals 1

    .line 27
    iget v0, p0, Lorg/catrobat/catroid/common/ParameterizedData;->currentPosition:I

    return v0
.end method

.method public final getFailMessages()Ljava/lang/StringBuilder;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/catrobat/catroid/common/ParameterizedData;->failMessages:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final getListSize()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/catrobat/catroid/common/ParameterizedData;->listSize:I

    return v0
.end method

.method public final getSuccessMessages()Ljava/lang/StringBuilder;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/catroid/common/ParameterizedData;->successMessages:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final reset()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/common/ParameterizedData;->currentPosition:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/common/ParameterizedData;->listSize:I

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/common/ParameterizedData;->failMessages:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/common/ParameterizedData;->successMessages:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/common/ParameterizedData;->currentParameters:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public final setCurrentParameters(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lorg/catrobat/catroid/common/ParameterizedData;->currentParameters:Ljava/lang/String;

    return-void
.end method

.method public final setCurrentPosition(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 27
    iput p1, p0, Lorg/catrobat/catroid/common/ParameterizedData;->currentPosition:I

    return-void
.end method

.method public final setFailMessages(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/StringBuilder;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lorg/catrobat/catroid/common/ParameterizedData;->failMessages:Ljava/lang/StringBuilder;

    return-void
.end method

.method public final setListSize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 28
    iput p1, p0, Lorg/catrobat/catroid/common/ParameterizedData;->listSize:I

    return-void
.end method

.method public final setSuccessMessages(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/StringBuilder;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lorg/catrobat/catroid/common/ParameterizedData;->successMessages:Ljava/lang/StringBuilder;

    return-void
.end method
