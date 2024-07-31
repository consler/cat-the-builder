.class public Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
.super Ljava/lang/Exception;
.source "MindstormsException.java"


# instance fields
.field private final innerException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p1, "innerException"    # Ljava/lang/Exception;
    .param p2, "message"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->innerException:Ljava/lang/Exception;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getInnerException()Ljava/lang/Exception;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;->innerException:Ljava/lang/Exception;

    return-object v0
.end method
