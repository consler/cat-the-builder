.class public Lcom/esotericsoftware/minlog/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/minlog/Log$Logger;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static ERROR:Z = false

.field public static INFO:Z = false

.field public static final LEVEL_DEBUG:I = 0x2

.field public static final LEVEL_ERROR:I = 0x5

.field public static final LEVEL_INFO:I = 0x3

.field public static final LEVEL_NONE:I = 0x6

.field public static final LEVEL_TRACE:I = 0x1

.field public static final LEVEL_WARN:I = 0x4

.field public static TRACE:Z = false

.field public static WARN:Z = false

.field private static level:I = 0x3

.field private static logger:Lcom/esotericsoftware/minlog/Log$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    .line 30
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    .line 32
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    .line 36
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    .line 78
    new-instance v0, Lcom/esotericsoftware/minlog/Log$Logger;

    invoke-direct {v0}, Lcom/esotericsoftware/minlog/Log$Logger;-><init>()V

    sput-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DEBUG()V
    .locals 1

    const/4 v0, 0x2

    .line 66
    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    return-void
.end method

.method public static ERROR()V
    .locals 1

    const/4 v0, 0x5

    .line 54
    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    return-void
.end method

.method public static INFO()V
    .locals 1

    const/4 v0, 0x3

    .line 62
    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    return-void
.end method

.method public static NONE()V
    .locals 1

    const/4 v0, 0x6

    .line 50
    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    return-void
.end method

.method public static TRACE()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    return-void
.end method

.method public static WARN()V
    .locals 1

    const/4 v0, 0x4

    .line 58
    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 3

    .line 137
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 141
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 133
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 129
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 3

    .line 89
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 93
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 85
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 81
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 3

    .line 121
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 125
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 117
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 113
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static set(I)V
    .locals 3

    .line 41
    sput p0, Lcom/esotericsoftware/minlog/Log;->level:I

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 42
    :goto_0
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    const/4 v0, 0x4

    if-gt p0, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 43
    :goto_1
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    const/4 v0, 0x3

    if-gt p0, v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 44
    :goto_2
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    const/4 v0, 0x2

    if-gt p0, v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    .line 45
    :goto_3
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-gt p0, v2, :cond_4

    move v1, v2

    .line 46
    :cond_4
    sput-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    return-void
.end method

.method public static setLogger(Lcom/esotericsoftware/minlog/Log$Logger;)V
    .locals 0

    .line 75
    sput-object p0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    return-void
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 3

    .line 153
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 157
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 149
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 145
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 3

    .line 105
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 109
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 101
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 97
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
