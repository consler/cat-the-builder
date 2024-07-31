.class Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;
.super Ljava/lang/Object;
.source "LegoSensorPortConfigDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorInfo"
.end annotation


# instance fields
.field sensor:Ljava/lang/Enum;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;

.field titleResId:I


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;ILjava/lang/Enum;)V
    .locals 0
    .param p2, "titleResId"    # I
    .param p3, "sensor"    # Ljava/lang/Enum;

    .line 54
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;->this$0:Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;->titleResId:I

    .line 56
    iput-object p3, p0, Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$Builder$SensorInfo;->sensor:Ljava/lang/Enum;

    .line 57
    return-void
.end method
