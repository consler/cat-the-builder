.class public Lorg/catrobat/catroid/web/WebconnectionException;
.super Ljava/lang/Exception;
.source "WebconnectionException.java"


# static fields
.field public static final ERROR_EMPTY_PROJECT_DATA:I = 0x3eb

.field public static final ERROR_JSON:I = 0x3e9

.field public static final ERROR_NETWORK:I = 0x3ea

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final message:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    if-nez p2, :cond_0

    .line 39
    const-string p2, "Unknown Error, no exception message given."

    .line 42
    :cond_0
    iput p1, p0, Lorg/catrobat/catroid/web/WebconnectionException;->statusCode:I

    .line 43
    iput-object p2, p0, Lorg/catrobat/catroid/web/WebconnectionException;->message:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebconnectionException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/catrobat/catroid/web/WebconnectionException;->statusCode:I

    return v0
.end method
