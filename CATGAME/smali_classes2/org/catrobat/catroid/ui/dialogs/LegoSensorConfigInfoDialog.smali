.class public Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "LegoSensorConfigInfoDialog.java"


# static fields
.field private static final BUNDLE_KEY_SENSOR_TYPE:Ljava/lang/String; = "legoSensorType"

.field public static final DIALOG_FRAGMENT_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->DIALOG_FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;
    .locals 3
    .param p0, "legoSensorType"    # I

    .line 51
    new-instance v0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;-><init>()V

    .line 53
    .local v0, "dialog":Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "legoSensorType"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 68
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->dismiss()V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "legoSensorType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, "legoSensorType":I
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    .line 82
    const v3, 0x7f120524

    .line 83
    .local v3, "titleStringResId":I
    const v4, 0x7f120523

    .line 84
    .local v4, "infoStringResId":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getLegoEV3SensorMapping(Landroid/content/Context;)[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    move-result-object v5

    .line 85
    .local v5, "sensorMapping":[Ljava/lang/Enum;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "sensorMappingStrings":[Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v3    # "titleStringResId":I
    .end local v4    # "infoStringResId":I
    .end local v5    # "sensorMapping":[Ljava/lang/Enum;
    .end local v6    # "sensorMappingStrings":[Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "LegoSensorConfigInfoDialog: Constructor called with invalid sensor type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_2
    const v3, 0x7f120526

    .line 77
    .restart local v3    # "titleStringResId":I
    const v4, 0x7f120525

    .line 78
    .restart local v4    # "infoStringResId":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getLegoNXTSensorMapping(Landroid/content/Context;)[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    move-result-object v5

    .line 79
    .restart local v5    # "sensorMapping":[Ljava/lang/Enum;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03001a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 80
    .restart local v6    # "sensorMappingStrings":[Ljava/lang/String;
    nop

    .line 91
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0d012f

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 92
    .local v7, "dialogView":Landroid/view/View;
    const v8, 0x7f0a0406

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 94
    .local v8, "disableShowInfoDialog":Landroid/widget/CheckBox;
    const v9, 0x7f0a040b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 95
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(I)V

    .line 96
    const v9, 0x7f0a0407

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aget-object v2, v5, v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v2, v6, v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v2, 0x7f0a0408

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aget-object v1, v5, v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, v6, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v1, 0x7f0a0409

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v2, v5, v2

    .line 101
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v2, v6, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v1, 0x7f0a040a

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v2, v5, v2

    .line 103
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v2, v6, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1205ff

    new-instance v9, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog$1;

    invoke-direct {v9, p0, v8, v0}, Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog$1;-><init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorConfigInfoDialog;Landroid/widget/CheckBox;I)V

    .line 108
    invoke-virtual {v1, v2, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 105
    return-object v1
.end method
