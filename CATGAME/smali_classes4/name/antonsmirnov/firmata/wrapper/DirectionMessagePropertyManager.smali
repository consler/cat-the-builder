.class public Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;
.super Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager;
.source "DirectionMessagePropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "isIncoming"


# instance fields
.field private isIncoming:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isIncoming"    # Z

    .line 17
    const-string v0, "isIncoming"

    invoke-direct {p0, v0}, Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager;-><init>(Ljava/lang/String;)V

    .line 18
    iput-boolean p1, p0, Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;->isIncoming:Z

    .line 19
    return-void
.end method


# virtual methods
.method protected createProperty()Ljava/lang/Boolean;
    .locals 1

    .line 23
    iget-boolean v0, p0, Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;->isIncoming:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createProperty()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;->createProperty()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isIncoming()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;->isIncoming:Z

    return v0
.end method
