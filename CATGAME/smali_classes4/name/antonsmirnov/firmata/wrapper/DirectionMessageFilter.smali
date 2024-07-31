.class public Lname/antonsmirnov/firmata/wrapper/DirectionMessageFilter;
.super Ljava/lang/Object;
.source "DirectionMessageFilter.java"

# interfaces
.implements Lname/antonsmirnov/firmata/wrapper/IMessageFilter;


# instance fields
.field private propertyManager:Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;


# direct methods
.method public constructor <init>(Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;)V
    .locals 0
    .param p1, "propertyManager"    # Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lname/antonsmirnov/firmata/wrapper/DirectionMessageFilter;->propertyManager:Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;

    .line 12
    return-void
.end method


# virtual methods
.method public isAllowed(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)Z
    .locals 2
    .param p1, "data"    # Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;

    .line 15
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/DirectionMessageFilter;->propertyManager:Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;

    invoke-virtual {v0, p1}, Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;->get(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/DirectionMessageFilter;->propertyManager:Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;->isIncoming()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
