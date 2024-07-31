.class public Lname/antonsmirnov/firmata/wrapper/OrFilter;
.super Ljava/lang/Object;
.source "OrFilter.java"

# interfaces
.implements Lname/antonsmirnov/firmata/wrapper/IMessageFilter;


# instance fields
.field private filters:[Lname/antonsmirnov/firmata/wrapper/IMessageFilter;


# direct methods
.method public varargs constructor <init>([Lname/antonsmirnov/firmata/wrapper/IMessageFilter;)V
    .locals 0
    .param p1, "filters"    # [Lname/antonsmirnov/firmata/wrapper/IMessageFilter;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lname/antonsmirnov/firmata/wrapper/OrFilter;->filters:[Lname/antonsmirnov/firmata/wrapper/IMessageFilter;

    .line 12
    return-void
.end method


# virtual methods
.method public isAllowed(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)Z
    .locals 6
    .param p1, "data"    # Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;

    .line 15
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/OrFilter;->filters:[Lname/antonsmirnov/firmata/wrapper/IMessageFilter;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 16
    .local v4, "eachFilter":Lname/antonsmirnov/firmata/wrapper/IMessageFilter;
    invoke-interface {v4, p1}, Lname/antonsmirnov/firmata/wrapper/IMessageFilter;->isAllowed(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 17
    const/4 v0, 0x1

    return v0

    .line 15
    .end local v4    # "eachFilter":Lname/antonsmirnov/firmata/wrapper/IMessageFilter;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_1
    return v2
.end method
