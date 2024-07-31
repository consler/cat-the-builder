.class public final Lcom/huawei/hms/common/data/DataHolder;
.super Lcom/huawei/hms/common/internal/safeparcel/AbstractSafeParcelable;
.source "DataHolder.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/common/data/DataHolder$DataHolderException;,
        Lcom/huawei/hms/common/data/DataHolder$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DataHolder"

.field public static final TYPE_BOOLEAN:Ljava/lang/String; = "type_boolean"

.field public static final TYPE_BYTE_ARRAY:Ljava/lang/String; = "type_byte_array"

.field public static final TYPE_DOUBLE:Ljava/lang/String; = "type_double"

.field public static final TYPE_FLOAT:Ljava/lang/String; = "type_float"

.field public static final TYPE_INT:Ljava/lang/String; = "type_int"

.field public static final TYPE_LONG:Ljava/lang/String; = "type_long"

.field public static final TYPE_STRING:Ljava/lang/String; = "type_string"

.field private static final builder:Lcom/huawei/hms/common/data/DataHolder$Builder;


# instance fields
.field private columns:[Ljava/lang/String;

.field private columnsBundle:Landroid/os/Bundle;

.field private cursorWindows:[Landroid/database/CursorWindow;

.field private dataCount:I

.field private isInstance:Z

.field private mClosed:Z

.field private metadata:Landroid/os/Bundle;

.field private perCursorCounts:[I

.field private statusCode:I

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/huawei/hms/common/data/DataHolderCreator;

    invoke-direct {v0}, Lcom/huawei/hms/common/data/DataHolderCreator;-><init>()V

    sput-object v0, Lcom/huawei/hms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    new-instance v0, Lcom/huawei/hms/common/data/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/common/data/a;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/common/data/DataHolder;->builder:Lcom/huawei/hms/common/data/DataHolder$Builder;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/common/data/DataHolder;->mClosed:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/common/data/DataHolder;->isInstance:Z

    .line 149
    iput p1, p0, Lcom/huawei/hms/common/data/DataHolder;->version:I

    .line 150
    iput-object p2, p0, Lcom/huawei/hms/common/data/DataHolder;->columns:[Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    .line 152
    iput p4, p0, Lcom/huawei/hms/common/data/DataHolder;->statusCode:I

    .line 153
    iput-object p5, p0, Lcom/huawei/hms/common/data/DataHolder;->metadata:Landroid/os/Bundle;

    .line 154
    invoke-virtual {p0}, Lcom/huawei/hms/common/data/DataHolder;->collectColumsAndCount()V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILandroid/os/Bundle;)V
    .locals 1

    .line 175
    new-instance v0, Lcom/huawei/hms/common/a/a;

    invoke-direct {v0, p1}, Lcom/huawei/hms/common/a/a;-><init>(Landroid/database/Cursor;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/huawei/hms/common/data/DataHolder;-><init>(Lcom/huawei/hms/common/a/a;ILandroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method private constructor <init>(Lcom/huawei/hms/common/a/a;ILandroid/os/Bundle;)V
    .locals 1

    .line 171
    invoke-virtual {p1}, Lcom/huawei/hms/common/a/a;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/huawei/hms/common/data/DataHolder;->getCursorWindows(Lcom/huawei/hms/common/a/a;)[Landroid/database/CursorWindow;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/huawei/hms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    .line 172
    return-void
.end method

.method private constructor <init>(Lcom/huawei/hms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V
    .locals 1

    .line 179
    invoke-static {p1}, Lcom/huawei/hms/common/data/DataHolder$Builder;->a(Lcom/huawei/hms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/huawei/hms/common/data/DataHolder;->getCursorWindows(Lcom/huawei/hms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/huawei/hms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    .line 180
    return-void
.end method

.method private constructor <init>(Lcom/huawei/hms/common/data/DataHolder$Builder;ILandroid/os/Bundle;I)V
    .locals 1

    .line 183
    invoke-static {p1}, Lcom/huawei/hms/common/data/DataHolder$Builder;->a(Lcom/huawei/hms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object p4

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/huawei/hms/common/data/DataHolder;->getCursorWindows(Lcom/huawei/hms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object p1

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/huawei/hms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    .line 184
    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/common/data/DataHolder$Builder;ILandroid/os/Bundle;ILcom/huawei/hms/common/data/DataHolder$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/common/data/DataHolder;-><init>(Lcom/huawei/hms/common/data/DataHolder$Builder;ILandroid/os/Bundle;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/common/data/DataHolder$Builder;ILandroid/os/Bundle;Lcom/huawei/hms/common/data/DataHolder$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/common/data/DataHolder;-><init>(Lcom/huawei/hms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 158
    const-string v0, "columnsP cannot be null"

    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "cursorWindowP cannot be null"

    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/common/data/DataHolder;->mClosed:Z

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/common/data/DataHolder;->isInstance:Z

    .line 162
    iput v0, p0, Lcom/huawei/hms/common/data/DataHolder;->version:I

    .line 163
    iput-object p1, p0, Lcom/huawei/hms/common/data/DataHolder;->columns:[Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    .line 165
    iput p3, p0, Lcom/huawei/hms/common/data/DataHolder;->statusCode:I

    .line 166
    iput-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->metadata:Landroid/os/Bundle;

    .line 167
    invoke-virtual {p0}, Lcom/huawei/hms/common/data/DataHolder;->collectColumsAndCount()V

    .line 168
    return-void
.end method

.method public static builder([Ljava/lang/String;)Lcom/huawei/hms/common/data/DataHolder$Builder;
    .locals 2

    .line 452
    new-instance v0, Lcom/huawei/hms/common/data/DataHolder$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/huawei/hms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/common/data/DataHolder$1;)V

    return-object v0
.end method

.method private checkAvailable(Ljava/lang/String;I)V
    .locals 1

    .line 357
    nop

    .line 358
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/common/data/DataHolder;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 361
    const-string p1, "buffer has been closed"

    goto :goto_2

    .line 362
    :cond_1
    if-ltz p2, :cond_3

    iget p1, p0, Lcom/huawei/hms/common/data/DataHolder;->dataCount:I

    if-lt p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ""

    goto :goto_2

    .line 363
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "row is out of index:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 359
    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find column: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 365
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    invoke-static {p2, p1}, Lcom/huawei/hms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 366
    return-void
.end method

.method public static empty(I)Lcom/huawei/hms/common/data/DataHolder;
    .locals 3

    .line 456
    new-instance v0, Lcom/huawei/hms/common/data/DataHolder;

    sget-object v1, Lcom/huawei/hms/common/data/DataHolder;->builder:Lcom/huawei/hms/common/data/DataHolder$Builder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/huawei/hms/common/data/DataHolder;-><init>(Lcom/huawei/hms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method private static getCursorWindows(Lcom/huawei/hms/common/a/a;)[Landroid/database/CursorWindow;
    .locals 5

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    nop

    .line 227
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hms/common/a/a;->getCount()I

    move-result v2

    .line 228
    invoke-virtual {p0}, Lcom/huawei/hms/common/a/a;->getWindow()Landroid/database/CursorWindow;

    move-result-object v3

    .line 229
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v4

    if-nez v4, :cond_0

    .line 230
    invoke-virtual {v3}, Landroid/database/CursorWindow;->acquireReference()V

    .line 231
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/huawei/hms/common/a/a;->a(Landroid/database/CursorWindow;)V

    .line 232
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    goto :goto_0

    .line 236
    :cond_0
    move v3, v1

    :goto_0
    invoke-static {p0, v3, v2}, Lcom/huawei/hms/common/data/DataHolder;->iterCursorWrapper(Lcom/huawei/hms/common/a/a;II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/CursorWindow;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {p0}, Lcom/huawei/hms/common/a/a;->close()V

    .line 238
    return-object v0

    .line 239
    :catchall_0
    move-exception v0

    .line 240
    :try_start_1
    const-string v2, "DataHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to getCursorWindows: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-array v0, v1, [Landroid/database/CursorWindow;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 243
    invoke-virtual {p0}, Lcom/huawei/hms/common/a/a;->close()V

    .line 241
    return-object v0

    .line 243
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/huawei/hms/common/a/a;->close()V

    .line 244
    throw v0
.end method

.method private static getCursorWindows(Lcom/huawei/hms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;
    .locals 2

    .line 269
    invoke-static {p0}, Lcom/huawei/hms/common/data/DataHolder$Builder;->a(Lcom/huawei/hms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 270
    new-array p0, v1, [Landroid/database/CursorWindow;

    return-object p0

    .line 273
    :cond_0
    if-ltz p1, :cond_2

    invoke-static {p0}, Lcom/huawei/hms/common/data/DataHolder$Builder;->b(Lcom/huawei/hms/common/data/DataHolder$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/huawei/hms/common/data/DataHolder$Builder;->b(Lcom/huawei/hms/common/data/DataHolder$Builder;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 275
    :goto_1
    invoke-static {p0}, Lcom/huawei/hms/common/data/DataHolder$Builder;->b(Lcom/huawei/hms/common/data/DataHolder$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 277
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/data/DataHolder;->iterCursorWindow(Lcom/huawei/hms/common/data/DataHolder$Builder;ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/database/CursorWindow;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/database/CursorWindow;

    return-object p0
.end method

.method private static iterCursorWindow(Lcom/huawei/hms/common/data/DataHolder$Builder;ILjava/util/List;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/data/DataHolder$Builder;",
            "I",
            "Ljava/util/List;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    new-instance v1, Landroid/database/CursorWindow;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-static {p0}, Lcom/huawei/hms/common/data/DataHolder$Builder;->a(Lcom/huawei/hms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v3}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_6

    .line 291
    :try_start_0
    invoke-virtual {v1}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "DataHolder"

    if-nez v5, :cond_1

    .line 292
    :try_start_1
    const-string v1, "Failed to allocate a row"

    invoke-static {v6, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v1, Landroid/database/CursorWindow;

    invoke-direct {v1, v2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1, v4}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 295
    invoke-static {p0}, Lcom/huawei/hms/common/data/DataHolder$Builder;->a(Lcom/huawei/hms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v1, v5}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 297
    invoke-virtual {v1}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v5

    if-nez v5, :cond_0

    .line 298
    const-string p0, "Failed to retry to allocate a row"

    invoke-static {v6, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-object v0

    .line 301
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_1
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 305
    nop

    .line 306
    const/4 v7, 0x1

    move v8, v3

    :goto_1
    invoke-static {p0}, Lcom/huawei/hms/common/data/DataHolder$Builder;->a(Lcom/huawei/hms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_3

    .line 307
    invoke-static {p0}, Lcom/huawei/hms/common/data/DataHolder$Builder;->a(Lcom/huawei/hms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 308
    invoke-static {v1, v7, v4, v8}, Lcom/huawei/hms/common/data/DataHolder;->putValue(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z

    move-result v7

    .line 310
    if-nez v7, :cond_2

    .line 311
    goto :goto_2

    .line 306
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 315
    :cond_3
    :goto_2
    if-nez v7, :cond_4

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail to put data for row "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 318
    new-instance p1, Landroid/database/CursorWindow;

    invoke-direct {p1, v2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1, v4}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 320
    invoke-static {p0}, Lcom/huawei/hms/common/data/DataHolder$Builder;->a(Lcom/huawei/hms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, p0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 321
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    goto :goto_4

    .line 329
    :cond_4
    nop

    .line 288
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 324
    :catch_0
    move-exception p0

    .line 325
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 326
    check-cast p2, Landroid/database/CursorWindow;

    invoke-virtual {p2}, Landroid/database/CursorWindow;->close()V

    .line 327
    goto :goto_3

    .line 328
    :cond_5
    throw p0

    .line 331
    :cond_6
    :goto_4
    return-object v0
.end method

.method private static iterCursorWrapper(Lcom/huawei/hms/common/a/a;II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/a/a;",
            "II)",
            "Ljava/util/ArrayList<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    :goto_0
    if-ge p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/a/a;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/huawei/hms/common/a/a;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    .line 251
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 252
    new-instance v1, Landroid/database/CursorWindow;

    invoke-direct {v1, v2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 254
    invoke-virtual {p0, p1, v1}, Lcom/huawei/hms/common/a/a;->fillWindow(ILandroid/database/CursorWindow;)V

    goto :goto_1

    .line 256
    :cond_0
    invoke-virtual {v1}, Landroid/database/CursorWindow;->acquireReference()V

    .line 257
    invoke-virtual {p0, v2}, Lcom/huawei/hms/common/a/a;->a(Landroid/database/CursorWindow;)V

    .line 259
    :goto_1
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result p1

    if-nez p1, :cond_1

    .line 260
    goto :goto_2

    .line 262
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result p1

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    add-int/2addr p1, v1

    .line 264
    goto :goto_0

    .line 265
    :cond_2
    :goto_2
    return-object v0
.end method

.method private static putValue(Landroid/database/CursorWindow;Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 335
    if-nez p1, :cond_0

    .line 336
    invoke-virtual {p0, p2, p3}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result p0

    return p0

    .line 337
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 338
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result p0

    return p0

    .line 339
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 340
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result p0

    return p0

    .line 341
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 342
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result p0

    return p0

    .line 343
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 344
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result p0

    return p0

    .line 345
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 346
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result p0

    return p0

    .line 347
    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 348
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result p0

    return p0

    .line 349
    :cond_7
    instance-of v0, p1, [B

    if-eqz v0, :cond_8

    .line 350
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result p0

    return p0

    .line 352
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unsupported type for column: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 435
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hms/common/data/DataHolder;->mClosed:Z

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 437
    invoke-virtual {v3}, Landroid/database/CursorWindow;->close()V

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/common/data/DataHolder;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :cond_1
    monitor-exit p0

    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final collectColumsAndCount()V
    .locals 4

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    .line 189
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/huawei/hms/common/data/DataHolder;->columns:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    nop

    .line 194
    iget-object v1, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/huawei/hms/common/data/DataHolder;->perCursorCounts:[I

    .line 195
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/huawei/hms/common/data/DataHolder;->perCursorCounts:[I

    aput v1, v3, v0

    .line 197
    aget-object v1, v2, v0

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v1, v2

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_1
    iput v1, p0, Lcom/huawei/hms/common/data/DataHolder;->dataCount:I

    .line 200
    return-void
.end method

.method public final copyToBuffer(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
    .locals 1

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/data/DataHolder;->checkAvailable(Ljava/lang/String;I)V

    .line 403
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1, p4}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    .line 404
    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 444
    iget-boolean v0, p0, Lcom/huawei/hms/common/data/DataHolder;->isInstance:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/huawei/hms/common/data/DataHolder;->close()V

    .line 447
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 449
    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 412
    iget v0, p0, Lcom/huawei/hms/common/data/DataHolder;->dataCount:I

    return v0
.end method

.method public final getMetadata()Landroid/os/Bundle;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder;->metadata:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/huawei/hms/common/data/DataHolder;->statusCode:I

    return v0
.end method

.method public final getValue(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 373
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "type_byte_array"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "type_string"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "type_long"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    move p4, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "type_double"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "type_int"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    move p4, v2

    goto :goto_1

    :sswitch_5
    const-string v0, "type_boolean"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "type_float"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x4

    goto :goto_1

    :goto_0
    const/4 p4, -0x1

    :goto_1
    packed-switch p4, :pswitch_data_0

    .line 396
    const/4 p1, 0x0

    return-object p1

    .line 393
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/data/DataHolder;->checkAvailable(Ljava/lang/String;I)V

    .line 394
    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    aget-object p3, p4, p3

    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object p1

    return-object p1

    .line 390
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/data/DataHolder;->checkAvailable(Ljava/lang/String;I)V

    .line 391
    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    aget-object p3, p4, p3

    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 387
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/data/DataHolder;->checkAvailable(Ljava/lang/String;I)V

    .line 388
    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    aget-object p3, p4, p3

    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 384
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/data/DataHolder;->checkAvailable(Ljava/lang/String;I)V

    .line 385
    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    aget-object p3, p4, p3

    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 381
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/data/DataHolder;->checkAvailable(Ljava/lang/String;I)V

    .line 382
    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    aget-object p3, p4, p3

    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 378
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/data/DataHolder;->checkAvailable(Ljava/lang/String;I)V

    .line 379
    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    aget-object p3, p4, p3

    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 375
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/data/DataHolder;->checkAvailable(Ljava/lang/String;I)V

    .line 376
    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    aget-object p3, p4, p3

    iget-object p4, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x411abee9 -> :sswitch_6
        -0x33dc37dd -> :sswitch_5
        -0x284ad696 -> :sswitch_4
        0x1a863476 -> :sswitch_3
        0x1ef16461 -> :sswitch_2
        0x346418b6 -> :sswitch_1
        0x4d842e87 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getWindowIndex(I)I
    .locals 4

    .line 416
    const/4 v0, 0x0

    if-gez p1, :cond_1

    iget v1, p0, Lcom/huawei/hms/common/data/DataHolder;->dataCount:I

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rowIndex is out of index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 418
    nop

    .line 420
    :goto_2
    iget-object v1, p0, Lcom/huawei/hms/common/data/DataHolder;->perCursorCounts:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 421
    aget v1, v1, v0

    if-ge p1, v1, :cond_2

    .line 423
    add-int/lit8 v0, v0, -0x1

    .line 424
    goto :goto_3

    .line 420
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 427
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/huawei/hms/common/data/DataHolder;->perCursorCounts:[I

    array-length p1, p1

    if-ne v0, p1, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    return v0
.end method

.method public final hasColumn(Ljava/lang/String;)Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final hasNull(Ljava/lang/String;II)Z
    .locals 1

    .line 407
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/data/DataHolder;->checkAvailable(Ljava/lang/String;I)V

    .line 408
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder;->columnsBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getType(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 431
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hms/common/data/DataHolder;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 203
    invoke-static {p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/huawei/hms/common/data/DataHolder;->columns:[Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 205
    iget-object v1, p0, Lcom/huawei/hms/common/data/DataHolder;->cursorWindows:[Landroid/database/CursorWindow;

    const/4 v4, 0x2

    invoke-static {p1, v4, v1, p2, v3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 206
    invoke-virtual {p0}, Lcom/huawei/hms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    const/4 v4, 0x3

    invoke-static {p1, v4, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 207
    invoke-virtual {p0}, Lcom/huawei/hms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v1

    const/4 v4, 0x4

    invoke-static {p1, v4, v1, v3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 208
    iget v1, p0, Lcom/huawei/hms/common/data/DataHolder;->version:I

    const/16 v3, 0x3e8

    invoke-static {p1, v3, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 209
    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 210
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/huawei/hms/common/data/DataHolder;->close()V

    .line 213
    :cond_0
    return-void
.end method
