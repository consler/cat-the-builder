.class public Lcom/esotericsoftware/minlog/Log$Logger;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/minlog/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logger"
.end annotation


# instance fields
.field private final firstLogTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/minlog/Log$Logger;->firstLogTime:J

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 16
    .param p1, "level"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "ex"    # Ljava/lang/Throwable;

    .line 169
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    .local v4, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/esotericsoftware/minlog/Log$Logger;->firstLogTime:J

    sub-long/2addr v6, v8

    .line 172
    .local v6, "time":J
    const-wide/32 v8, 0xea60

    div-long v8, v6, v8

    .line 173
    .local v8, "minutes":J
    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    const-wide/16 v12, 0x3c

    rem-long/2addr v10, v12

    .line 174
    .local v10, "seconds":J
    const-wide/16 v12, 0x9

    cmp-long v14, v8, v12

    const/16 v15, 0x30

    if-gtz v14, :cond_0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    const/16 v14, 0x3a

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    cmp-long v12, v10, v12

    if-gtz v12, :cond_1

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    :cond_1
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    const/4 v12, 0x1

    if-eq v1, v12, :cond_6

    const/4 v12, 0x2

    if-eq v1, v12, :cond_5

    const/4 v12, 0x3

    if-eq v1, v12, :cond_4

    const/4 v12, 0x4

    if-eq v1, v12, :cond_3

    const/4 v12, 0x5

    if-eq v1, v12, :cond_2

    goto :goto_0

    .line 182
    :cond_2
    const-string v12, " ERROR: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    goto :goto_0

    .line 185
    :cond_3
    const-string v12, "  WARN: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    goto :goto_0

    .line 188
    :cond_4
    const-string v12, "  INFO: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    goto :goto_0

    .line 191
    :cond_5
    const-string v12, " DEBUG: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    goto :goto_0

    .line 194
    :cond_6
    const-string v12, " TRACE: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :goto_0
    if-eqz v2, :cond_7

    .line 199
    const/16 v12, 0x5b

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v12, "] "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_7
    move-object/from16 v12, p3

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    if-eqz v3, :cond_8

    .line 207
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13, v5}, Ljava/io/StringWriter;-><init>(I)V

    move-object v5, v13

    .line 208
    .local v5, "writer":Ljava/io/StringWriter;
    new-instance v13, Ljava/io/PrintWriter;

    invoke-direct {v13, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v13}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 209
    const/16 v13, 0xa

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .end local v5    # "writer":Ljava/io/StringWriter;
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/minlog/Log$Logger;->print(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method protected print(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 218
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    return-void
.end method
