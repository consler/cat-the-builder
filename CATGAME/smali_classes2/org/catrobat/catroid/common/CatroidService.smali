.class public interface abstract Lorg/catrobat/catroid/common/CatroidService;
.super Ljava/lang/Object;
.source "CatroidService.java"


# static fields
.field public static final BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceService;

    sput-object v0, Lorg/catrobat/catroid/common/CatroidService;->BLUETOOTH_DEVICE_SERVICE:Ljava/lang/Class;

    return-void
.end method
