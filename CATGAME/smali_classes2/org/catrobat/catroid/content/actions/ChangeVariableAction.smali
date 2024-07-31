.class public final Lorg/catrobat/catroid/content/actions/ChangeVariableAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "ChangeVariableAction.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangeVariableAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeVariableAction.kt\norg/catrobat/catroid/content/actions/ChangeVariableAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/ChangeVariableAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "()V",
        "changeVariable",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getChangeVariable",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setChangeVariable",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "userVariable",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "getUserVariable",
        "()Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "setUserVariable",
        "(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V",
        "act",
        "",
        "delta",
        "",
        "getMultiplayerDevice",
        "Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;",
        "updateUserVariable",
        "",
        "originalValue",
        "",
        "value",
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
.field private changeVariable:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method

.method private final updateUserVariable(DD)V
    .locals 9
    .param p1, "originalValue"    # D
    .param p3, "value"    # D

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 64
    .local v1, "it":D
    const/4 v3, 0x0

    .line 50
    .local v3, "$i$a$-takeUnless-ChangeVariableAction$updateUserVariable$original$1":I
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    .end local v1    # "it":D
    .end local v3    # "$i$a$-takeUnless-ChangeVariableAction$updateUserVariable$original$1":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v3

    .line 51
    .local v0, "original":D
    :goto_1
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 64
    .local v6, "it":D
    const/4 v8, 0x0

    .line 51
    .local v8, "$i$a$-takeUnless-ChangeVariableAction$updateUserVariable$valueToAdd$1":I
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    .end local v6    # "it":D
    .end local v8    # "$i$a$-takeUnless-ChangeVariableAction$updateUserVariable$valueToAdd$1":I
    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 52
    .local v3, "valueToAdd":D
    :cond_3
    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v5, :cond_4

    add-double v6, v0, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 54
    :cond_4
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v5

    const-string v6, "ProjectManager.getInstance()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v5

    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v5, v2}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariable(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v2

    .line 55
    .local v2, "multiplayerVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    if-eqz v2, :cond_6

    move-object v5, v2

    .local v5, "it":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    const/4 v6, 0x0

    .line 56
    .local v6, "$i$a$-let-ChangeVariableAction$updateUserVariable$1":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->getMultiplayerDevice()Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;

    move-result-object v7

    .line 57
    .local v7, "multiplayerDevice":Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;
    if-eqz v7, :cond_6

    iget-object v8, p0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-interface {v7, v8}, Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;->sendChangedMultiplayerVariables(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 55
    .end local v5    # "it":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .end local v6    # "$i$a$-let-ChangeVariableAction$updateUserVariable$1":I
    .end local v7    # "multiplayerDevice":Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;
    :cond_6
    nop

    .line 59
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 7
    .param p1, "delta"    # F

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/lang/Double;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/Double;

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 42
    .local v3, "originalValue":D
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->changeVariable:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v5}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretObject(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 43
    .local v0, "value":Ljava/lang/Object;
    :goto_1
    instance-of v5, v0, Ljava/lang/Double;

    if-nez v5, :cond_3

    move-object v5, v1

    goto :goto_2

    :cond_3
    move-object v5, v0

    :goto_2
    check-cast v5, Ljava/lang/Double;

    if-eqz v5, :cond_4

    move-object v1, v5

    goto :goto_4

    :cond_4
    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_5

    move-object v5, v1

    goto :goto_3

    :cond_5
    move-object v5, v0

    :goto_3
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-static {v5}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .local v5, "$this$run":D
    const/4 v1, 0x0

    .line 44
    .local v1, "$i$a$-run-ChangeVariableAction$act$1":I
    invoke-direct {p0, v3, v4, v5, v6}, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->updateUserVariable(DD)V

    .line 45
    nop

    .line 43
    .end local v1    # "$i$a$-run-ChangeVariableAction$act$1":I
    .end local v5    # "$this$run":D
    nop

    .line 46
    :cond_7
    return v2

    .line 41
    .end local v0    # "value":Ljava/lang/Object;
    .end local v3    # "originalValue":D
    :cond_8
    return v2
.end method

.method public final getChangeVariable()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->changeVariable:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getMultiplayerDevice()Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;
    .locals 2

    .line 61
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sget-object v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->MULTIPLAYER:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->getDevice(Ljava/lang/Class;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final getUserVariable()Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-object v0
.end method

.method public final setChangeVariable(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->changeVariable:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method public final setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ChangeVariableAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-void
.end method
