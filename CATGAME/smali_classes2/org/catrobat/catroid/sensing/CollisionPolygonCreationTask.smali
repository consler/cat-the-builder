.class public Lorg/catrobat/catroid/sensing/CollisionPolygonCreationTask;
.super Ljava/lang/Object;
.source "CollisionPolygonCreationTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lookdata:Lorg/catrobat/catroid/common/LookData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/catrobat/catroid/sensing/CollisionPolygonCreationTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/sensing/CollisionPolygonCreationTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/common/LookData;)V
    .locals 0
    .param p1, "lookdata"    # Lorg/catrobat/catroid/common/LookData;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonCreationTask;->lookdata:Lorg/catrobat/catroid/common/LookData;

    .line 39
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 42
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/CollisionPolygonCreationTask;->lookdata:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/sensing/CollisionInformation;->loadCollisionPolygon()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lar/com/hjg/pngj/PngjInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "exception":Lar/com/hjg/pngj/PngjInputException;
    sget-object v1, Lorg/catrobat/catroid/sensing/CollisionPolygonCreationTask;->TAG:Ljava/lang/String;

    const-string v2, "File not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 45
    .end local v0    # "exception":Lar/com/hjg/pngj/PngjInputException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "exception":Ljava/lang/NullPointerException;
    sget-object v1, Lorg/catrobat/catroid/sensing/CollisionPolygonCreationTask;->TAG:Ljava/lang/String;

    const-string v2, "Image format not supported "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v0    # "exception":Ljava/lang/NullPointerException;
    :goto_0
    nop

    .line 50
    :goto_1
    return-void
.end method
