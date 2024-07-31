.class public Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;
.super Ljava/lang/Exception;
.source "RPiSocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoGpioException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
    .param p2, "msg"    # Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection$NoGpioException;->this$0:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    .line 247
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 248
    return-void
.end method
