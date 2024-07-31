.class final Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoClassNameToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2332
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 2333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;->setUseClassName(Z)V

    .line 2334
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2335
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2343
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;->NO_CLASS_NAME_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
