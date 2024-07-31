.class public Lorg/catrobat/catroid/web/WebScratchProgramException;
.super Ljava/lang/Exception;
.source "WebScratchProgramException.java"


# static fields
.field public static final ERROR_PROGRAM_NOT_ACCESSIBLE:I = 0x3e9

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final message:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lorg/catrobat/catroid/web/WebconnectionException;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/web/WebScratchProgramException;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    if-nez p2, :cond_0

    .line 41
    const-string p2, "Unknown Error, no exception message given."

    .line 43
    :cond_0
    iput p1, p0, Lorg/catrobat/catroid/web/WebScratchProgramException;->statusCode:I

    .line 44
    iput-object p2, p0, Lorg/catrobat/catroid/web/WebScratchProgramException;->message:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 53
    sget-object v0, Lorg/catrobat/catroid/web/WebScratchProgramException;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/catrobat/catroid/web/WebScratchProgramException;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/catrobat/catroid/web/WebScratchProgramException;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebScratchProgramException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/catrobat/catroid/web/WebScratchProgramException;->statusCode:I

    return v0
.end method
