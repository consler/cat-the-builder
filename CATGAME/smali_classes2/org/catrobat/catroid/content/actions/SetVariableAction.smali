.class public Lorg/catrobat/catroid/content/actions/SetVariableAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetVariableAction.java"


# instance fields
.field private changeVariable:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getMultiplayerDevice()Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;
    .locals 2

    .line 85
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

.method public setChangeVariable(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "changeVariable"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 96
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->changeVariable:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 97
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 100
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 101
    return-void
.end method

.method public setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 89
    if-nez p1, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 93
    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "percent"    # F

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-nez v0, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->changeVariable:Lorg/catrobat/catroid/formulaeditor/Formula;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 54
    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretObject(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    nop

    .line 56
    .local v0, "value":Ljava/lang/Object;
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->changeVariable:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->isBoolean(Lorg/catrobat/catroid/content/Scope;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 57
    move-object v3, v0

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v1, v3, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 60
    :cond_3
    const/4 v1, 0x0

    .line 61
    .local v1, "isFirstLevelStringTree":Z
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->changeVariable:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getElementType()Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->STRING:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-ne v2, v3, :cond_4

    .line 62
    const/4 v1, 0x1

    .line 66
    :cond_4
    if-nez v1, :cond_5

    :try_start_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->hashCode()I

    move-result v2

    const v3, 0x602e2c7c

    if-eq v2, v3, :cond_5

    .line 67
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->convertArgumentToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 68
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->convertArgumentToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_2

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, "numberFormatException":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Couldn\'t parse String"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 72
    .end local v2    # "numberFormatException":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_2
    nop

    .line 73
    :goto_3
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariable(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserVariable;

    move-result-object v2

    .line 76
    .local v2, "multiplayerVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    if-eqz v2, :cond_6

    .line 77
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/SetVariableAction;->getMultiplayerDevice()Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;

    move-result-object v3

    .line 78
    .local v3, "multiplayerDevice":Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;
    if-eqz v3, :cond_6

    .line 79
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/SetVariableAction;->userVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-interface {v3, v4}, Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;->sendChangedMultiplayerVariables(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 82
    .end local v3    # "multiplayerDevice":Lorg/catrobat/catroid/devices/multiplayer/MultiplayerInterface;
    :cond_6
    return-void
.end method
