.class Lorg/apache/commons/collections/ExtendedProperties$1;
.super Ljava/lang/Object;
.source "ExtendedProperties.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/ExtendedProperties;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/ExtendedProperties;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ExtendedProperties$1;->this$0:Lorg/apache/commons/collections/ExtendedProperties;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    const-string v0, "file.separator"

    .line 175
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
