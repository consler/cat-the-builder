.class public final Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;
.super Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;
.source "UserDefinedBrickAction.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserDefinedBrickAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserDefinedBrickAction.kt\norg/catrobat/catroid/content/actions/UserDefinedBrickAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1819#2,2:65\n1819#2,2:67\n*E\n*S KotlinDebug\n*F\n+ 1 UserDefinedBrickAction.kt\norg/catrobat/catroid/content/actions/UserDefinedBrickAction\n*L\n44#1,2:65\n52#1,2:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0010H\u0002J\u0014\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010R(\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;",
        "Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;",
        "()V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "userDefinedBrickID",
        "Ljava/util/UUID;",
        "getUserDefinedBrickID",
        "()Ljava/util/UUID;",
        "setUserDefinedBrickID",
        "(Ljava/util/UUID;)V",
        "userDefinedBrickInputs",
        "",
        "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
        "getUserDefinedBrickInputs",
        "()Ljava/util/List;",
        "setUserDefinedBrickInputs",
        "(Ljava/util/List;)V",
        "getEventId",
        "Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;",
        "getInterpretedInputs",
        "",
        "setInputs",
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
.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private userDefinedBrickID:Ljava/util/UUID;

.field private userDefinedBrickInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;-><init>()V

    return-void
.end method

.method private final getInterpretedInputs()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 52
    .local v0, "interpretedInputs":Ljava/util/List;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->userDefinedBrickInputs:Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 67
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    .local v5, "it":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    const/4 v6, 0x0

    .line 53
    .local v6, "$i$a$-forEach-UserDefinedBrickAction$getInterpretedInputs$1":I
    invoke-virtual {v5}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getValue()Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v7

    iget-object v8, p0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretObject(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v7

    .line 54
    .local v7, "parameter":Ljava/lang/Object;
    new-instance v8, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v5}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v7    # "parameter":Ljava/lang/Object;
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    .end local v6    # "$i$a$-forEach-UserDefinedBrickAction$getInterpretedInputs$1":I
    goto :goto_0

    .line 68
    :cond_0
    nop

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    goto :goto_1

    :cond_1
    nop

    .line 56
    :goto_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getEventId()Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->getEventId()Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/eventids/EventId;

    return-object v0
.end method

.method public getEventId()Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;
    .locals 4

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->userDefinedBrickID:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .local v0, "id":Ljava/util/UUID;
    const/4 v1, 0x0

    .line 61
    .local v1, "$i$a$-let-UserDefinedBrickAction$getEventId$1":I
    new-instance v2, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;

    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->getInterpretedInputs()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/catrobat/catroid/content/eventids/UserDefinedBrickEventId;-><init>(Ljava/util/UUID;Ljava/util/List;)V

    .line 60
    .end local v0    # "id":Ljava/util/UUID;
    .end local v1    # "$i$a$-let-UserDefinedBrickAction$getEventId$1":I
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 62
    :goto_0
    return-object v2
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final getUserDefinedBrickID()Ljava/util/UUID;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->userDefinedBrickID:Ljava/util/UUID;

    return-object v0
.end method

.method public final getUserDefinedBrickInputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->userDefinedBrickInputs:Ljava/util/List;

    return-object v0
.end method

.method public final setInputs(Ljava/util/List;)V
    .locals 8
    .param p1, "userDefinedBrickInputs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
            ">;)V"
        }
    .end annotation

    const-string v0, "userDefinedBrickInputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->userDefinedBrickInputs:Ljava/util/List;

    .line 44
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 65
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    .local v4, "it":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    const/4 v5, 0x0

    .line 45
    .local v5, "$i$a$-forEach-UserDefinedBrickAction$setInputs$1":I
    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->userDefinedBrickInputs:Ljava/util/List;

    if-eqz v6, :cond_0

    new-instance v7, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    invoke-direct {v7, v4}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;-><init>(Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    .end local v5    # "$i$a$-forEach-UserDefinedBrickAction$setInputs$1":I
    goto :goto_0

    .line 66
    :cond_1
    nop

    .line 47
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 1
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 36
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Lorg/catrobat/catroid/content/actions/SingleSpriteEventAction;->setSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 37
    return-void
.end method

.method public final setUserDefinedBrickID(Ljava/util/UUID;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/UUID;

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->userDefinedBrickID:Ljava/util/UUID;

    return-void
.end method

.method public final setUserDefinedBrickInputs(Ljava/util/List;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/UserDefinedBrickAction;->userDefinedBrickInputs:Ljava/util/List;

    return-void
.end method
