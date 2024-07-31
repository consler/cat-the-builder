.class public Lname/antonsmirnov/firmata/wrapper/StubMessageFilter;
.super Ljava/lang/Object;
.source "StubMessageFilter.java"

# interfaces
.implements Lname/antonsmirnov/firmata/wrapper/IMessageFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAllowed(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)Z
    .locals 1
    .param p1, "data"    # Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;

    .line 9
    const/4 v0, 0x1

    return v0
.end method
