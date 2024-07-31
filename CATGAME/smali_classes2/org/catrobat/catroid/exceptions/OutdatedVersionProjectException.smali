.class public Lorg/catrobat/catroid/exceptions/OutdatedVersionProjectException;
.super Lorg/catrobat/catroid/exceptions/ProjectException;
.source "OutdatedVersionProjectException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/catrobat/catroid/exceptions/ProjectException;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/exceptions/ProjectException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
