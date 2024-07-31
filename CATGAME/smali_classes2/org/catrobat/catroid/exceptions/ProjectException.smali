.class public abstract Lorg/catrobat/catroid/exceptions/ProjectException;
.super Ljava/lang/Exception;
.source "ProjectException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final uiErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/exceptions/ProjectException;->uiErrorMessage:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/exceptions/ProjectException;->uiErrorMessage:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getUiErrorMessage()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/exceptions/ProjectException;->uiErrorMessage:Ljava/lang/String;

    return-object v0
.end method
