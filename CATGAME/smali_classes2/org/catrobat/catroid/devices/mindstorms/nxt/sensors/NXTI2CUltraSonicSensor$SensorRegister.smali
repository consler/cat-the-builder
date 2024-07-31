.class final enum Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;
.super Ljava/lang/Enum;
.source "NXTI2CUltraSonicSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SensorRegister"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum Command:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum FactoryScaleDivisor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum FactoryScaleFactor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum FactoryZeroValue:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum Interval:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum MeasurementUnits:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum ProductId:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum Result1:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum Result2:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum Result3:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum Result4:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum Result5:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum Result6:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum Result7:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum Result8:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum ScaleDivisor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum ScaleFactor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum SensorType:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum Version:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

.field public static final enum ZeroValue:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;


# instance fields
.field private register:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 46
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "Version"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Version:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "ProductId"

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->ProductId:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "SensorType"

    const/4 v5, 0x2

    const/16 v6, 0x10

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->SensorType:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "FactoryZeroValue"

    const/4 v7, 0x3

    const/16 v8, 0x11

    invoke-direct {v0, v1, v7, v8}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->FactoryZeroValue:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "FactoryScaleFactor"

    const/4 v9, 0x4

    const/16 v10, 0x12

    invoke-direct {v0, v1, v9, v10}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->FactoryScaleFactor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    .line 47
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "FactoryScaleDivisor"

    const/4 v11, 0x5

    const/16 v12, 0x13

    invoke-direct {v0, v1, v11, v12}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->FactoryScaleDivisor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "MeasurementUnits"

    const/4 v13, 0x6

    const/16 v14, 0x14

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->MeasurementUnits:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    .line 48
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "Interval"

    const/4 v15, 0x7

    const/16 v13, 0x40

    invoke-direct {v0, v1, v15, v13}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Interval:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "Command"

    const/16 v13, 0x41

    invoke-direct {v0, v1, v4, v13}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Command:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "Result1"

    const/16 v13, 0x9

    const/16 v4, 0x42

    invoke-direct {v0, v1, v13, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result1:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "Result2"

    const/16 v4, 0xa

    const/16 v13, 0x43

    invoke-direct {v0, v1, v4, v13}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result2:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "Result3"

    const/16 v13, 0xb

    const/16 v4, 0x44

    invoke-direct {v0, v1, v13, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result3:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "Result4"

    const/16 v4, 0xc

    const/16 v13, 0x45

    invoke-direct {v0, v1, v4, v13}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result4:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "Result5"

    const/16 v13, 0xd

    const/16 v4, 0x46

    invoke-direct {v0, v1, v13, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result5:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    .line 49
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "Result6"

    const/16 v4, 0xe

    const/16 v13, 0x47

    invoke-direct {v0, v1, v4, v13}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result6:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "Result7"

    const/16 v13, 0xf

    const/16 v4, 0x48

    invoke-direct {v0, v1, v13, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result7:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "Result8"

    const/16 v4, 0x49

    invoke-direct {v0, v1, v6, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result8:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "ZeroValue"

    const/16 v4, 0x50

    invoke-direct {v0, v1, v8, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->ZeroValue:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "ScaleFactor"

    const/16 v4, 0x51

    invoke-direct {v0, v1, v10, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->ScaleFactor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const-string v1, "ScaleDivisor"

    const/16 v4, 0x52

    invoke-direct {v0, v1, v12, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->ScaleDivisor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    .line 45
    new-array v1, v14, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Version:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    aput-object v4, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->ProductId:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->SensorType:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->FactoryZeroValue:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->FactoryScaleFactor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->FactoryScaleDivisor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    aput-object v2, v1, v11

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->MeasurementUnits:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Interval:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    aput-object v2, v1, v15

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Command:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result1:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result2:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result3:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result4:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result5:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result6:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result7:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    aput-object v2, v1, v13

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->Result8:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->ZeroValue:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->ScaleFactor:Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    aput-object v2, v1, v10

    aput-object v0, v1, v12

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "register"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->register:I

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;
    .locals 1

    .line 45
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 58
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTI2CUltraSonicSensor$SensorRegister;->register:I

    int-to-byte v0, v0

    return v0
.end method
