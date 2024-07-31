.class public Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "FormulaEditorComputeDialog.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private computeTextView:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private formulaToCompute:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/catrobat/catroid/content/Scope;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 60
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->formulaToCompute:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 61
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 63
    return-void
.end method

.method private setDialogTextView(Ljava/lang/String;)V
    .locals 2
    .param p1, "newString"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->computeTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/-$$Lambda$FormulaEditorComputeDialog$GRgXWmkjK2SgY0J9rhVYj5haiso;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/ui/dialogs/-$$Lambda$FormulaEditorComputeDialog$GRgXWmkjK2SgY0J9rhVYj5haiso;-><init>(Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method private showFormulaResult(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;)V
    .locals 2
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .param p2, "stringProvider"    # Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;

    .line 130
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->computeTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 131
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->formulaToCompute:Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v0, p2, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->getUserFriendlyString(Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Lorg/catrobat/catroid/utils/NumberFormats;->trimTrailingCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->setDialogTextView(Ljava/lang/String;)V

    .line 136
    return-void
.end method


# virtual methods
.method public synthetic lambda$setDialogTextView$0$FormulaEditorComputeDialog(Ljava/lang/String;)V
    .locals 6
    .param p1, "newString"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->computeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->computeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 153
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->computeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->computeTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 154
    .local v1, "height":I
    int-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 155
    .local v2, "heightMargin":I
    const/4 v3, -0x1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    add-int v3, v1, v2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    iget-object v3, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->computeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 140
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    .line 69
    .local v0, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->isCurrentProjectLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const v1, 0x7f0d012d

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->setContentView(I)V

    .line 71
    const v1, 0x7f0a0395

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->computeTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 73
    :cond_0
    const v1, 0x7f0d012c

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->setContentView(I)V

    .line 74
    const v1, 0x7f0a0394

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->computeTextView:Landroid/widget/TextView;

    .line 76
    :goto_0
    new-instance v1, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "stringProvider":Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-direct {p0, v2, v1}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->showFormulaResult(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;)V

    .line 78
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 144
    new-instance v0, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, "stringProvider":Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-direct {p0, v1, v0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->showFormulaResult(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;)V

    .line 146
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 118
    invoke-static {p0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 119
    sget-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    invoke-interface {v0}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->pause()V

    .line 120
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog;->onStop()V

    .line 121
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 125
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->dismiss()V

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public setFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 4
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 81
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->formulaToCompute:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 83
    new-instance v0, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;-><init>()V

    .line 84
    .local v0, "resourcesSet":Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;
    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;->addRequiredResources(Ljava/util/Set;)V

    .line 86
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->getInstance(Landroid/content/Context;)Lorg/catrobat/catroid/formulaeditor/SensorHandler;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    invoke-direct {v2}, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;-><init>()V

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->setSensorLoudness(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)V

    .line 90
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    sget-object v1, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v1}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    .line 92
    .local v1, "btService":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_NXT:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->connectDevice(Ljava/lang/Class;Landroid/content/Context;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    .line 95
    .end local v1    # "btService":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    :cond_1
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    sget-object v1, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v1}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    .line 97
    .restart local v1    # "btService":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_EV3:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->connectDevice(Ljava/lang/Class;Landroid/content/Context;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    .line 100
    .end local v1    # "btService":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    :cond_2
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    sget-object v1, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v1}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    .line 102
    .restart local v1    # "btService":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->ARDUINO:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->connectDevice(Ljava/lang/Class;Landroid/content/Context;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    .line 105
    .end local v1    # "btService":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    :cond_3
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    sget-object v1, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    invoke-static {v1}, Lorg/catrobat/catroid/common/ServiceProvider;->getService(Ljava/lang/Class;)Lorg/catrobat/catroid/common/CatroidService;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    .line 107
    .restart local v1    # "btService":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    sget-object v2, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->PHIRO:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;->connectDevice(Ljava/lang/Class;Landroid/content/Context;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService$ConnectDeviceResult;

    .line 110
    .end local v1    # "btService":Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;
    :cond_4
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {p1, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->containsElement(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/FormulaEditorComputeDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->startSensorListener(Landroid/content/Context;)V

    .line 112
    invoke-static {p0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->registerListener(Landroid/hardware/SensorEventListener;)V

    .line 114
    :cond_5
    return-void
.end method
