.class public Lname/antonsmirnov/firmata/wrapper/DateMessagePropertyManager;
.super Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager;
.source "DateMessagePropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "date"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    const-string v0, "date"

    invoke-direct {p0, v0}, Lname/antonsmirnov/firmata/wrapper/MessagePropertyManager;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected bridge synthetic createProperty()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/wrapper/DateMessagePropertyManager;->createProperty()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected createProperty()Ljava/util/Date;
    .locals 1

    .line 19
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
