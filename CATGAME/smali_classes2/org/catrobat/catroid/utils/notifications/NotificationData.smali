.class public final Lorg/catrobat/catroid/utils/notifications/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/utils/notifications/NotificationData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008,\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 D2\u00020\u0001:\u0001DBe\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0010J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\rH\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\t\u0010/\u001a\u00020\u0005H\u00c6\u0003J\t\u00100\u001a\u00020\u0005H\u00c6\u0003J\t\u00101\u001a\u00020\u0005H\u00c6\u0003J\t\u00102\u001a\u00020\u0005H\u00c6\u0003J\t\u00103\u001a\u00020\u0005H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\t\u00106\u001a\u00020\rH\u00c6\u0003Jw\u00107\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003H\u00c6\u0001J\u0013\u00108\u001a\u00020\r2\u0008\u00109\u001a\u0004\u0018\u00010:H\u00d6\u0003J\t\u0010;\u001a\u00020\u0003H\u00d6\u0001J \u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u00052\u0008\u0010A\u001a\u0004\u0018\u00010BJ\t\u0010C\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u000e\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0012\"\u0004\u0008\u001d\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0016\"\u0004\u0008#\u0010\u0018R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001f\"\u0004\u0008%\u0010!R\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001f\"\u0004\u0008\'\u0010!R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001f\"\u0004\u0008)\u0010!R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001f\"\u0004\u0008+\u0010!\u00a8\u0006E"
    }
    d2 = {
        "Lorg/catrobat/catroid/utils/notifications/NotificationData;",
        "Ljava/io/Serializable;",
        "notificationIconResId",
        "",
        "programName",
        "",
        "titleWorking",
        "titleDone",
        "textWorking",
        "textDone",
        "progressInPercent",
        "maxProgress",
        "ongoing",
        "",
        "autoCancel",
        "notificationID",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZI)V",
        "getAutoCancel",
        "()Z",
        "setAutoCancel",
        "(Z)V",
        "getMaxProgress",
        "()I",
        "setMaxProgress",
        "(I)V",
        "getNotificationID",
        "getNotificationIconResId",
        "setNotificationIconResId",
        "getOngoing",
        "setOngoing",
        "getProgramName",
        "()Ljava/lang/String;",
        "setProgramName",
        "(Ljava/lang/String;)V",
        "getProgressInPercent",
        "setProgressInPercent",
        "getTextDone",
        "setTextDone",
        "getTextWorking",
        "setTextWorking",
        "getTitleDone",
        "setTitleDone",
        "getTitleWorking",
        "setTitleWorking",
        "component1",
        "component10",
        "component11",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toNotification",
        "Landroid/app/Notification;",
        "context",
        "Landroid/content/Context;",
        "channelId",
        "contentIntent",
        "Landroid/app/PendingIntent;",
        "toString",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/utils/notifications/NotificationData$Companion;

.field private static final serialVersionUID:J = 0x2aL


# instance fields
.field private autoCancel:Z

.field private maxProgress:I

.field private final notificationID:I

.field private notificationIconResId:I

.field private ongoing:Z

.field private programName:Ljava/lang/String;

.field private progressInPercent:I

.field private textDone:Ljava/lang/String;

.field private textWorking:Ljava/lang/String;

.field private titleDone:Ljava/lang/String;

.field private titleWorking:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/utils/notifications/NotificationData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/utils/notifications/NotificationData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->Companion:Lorg/catrobat/catroid/utils/notifications/NotificationData$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZI)V
    .locals 1
    .param p1, "notificationIconResId"    # I
    .param p2, "programName"    # Ljava/lang/String;
    .param p3, "titleWorking"    # Ljava/lang/String;
    .param p4, "titleDone"    # Ljava/lang/String;
    .param p5, "textWorking"    # Ljava/lang/String;
    .param p6, "textDone"    # Ljava/lang/String;
    .param p7, "progressInPercent"    # I
    .param p8, "maxProgress"    # I
    .param p9, "ongoing"    # Z
    .param p10, "autoCancel"    # Z
    .param p11, "notificationID"    # I

    const-string v0, "programName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleWorking"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleDone"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textWorking"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textDone"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationIconResId:I

    iput-object p2, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->programName:Ljava/lang/String;

    iput-object p3, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleWorking:Ljava/lang/String;

    iput-object p4, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleDone:Ljava/lang/String;

    iput-object p5, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textWorking:Ljava/lang/String;

    iput-object p6, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textDone:Ljava/lang/String;

    iput p7, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->progressInPercent:I

    iput p8, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->maxProgress:I

    iput-boolean p9, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->ongoing:Z

    iput-boolean p10, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->autoCancel:Z

    iput p11, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationID:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 39
    move v10, v2

    goto :goto_0

    .line 0
    :cond_0
    move/from16 v10, p7

    .line 39
    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    .line 40
    move v11, v2

    goto :goto_1

    .line 39
    :cond_1
    move/from16 v11, p8

    .line 40
    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    .line 41
    move v12, v2

    goto :goto_2

    .line 40
    :cond_2
    move/from16 v12, p9

    .line 41
    :goto_2
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    .line 42
    move v13, v2

    goto :goto_3

    .line 41
    :cond_3
    move/from16 v13, p10

    .line 42
    :goto_3
    move-object v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v14, p11

    invoke-direct/range {v3 .. v14}, Lorg/catrobat/catroid/utils/notifications/NotificationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZI)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/catroid/utils/notifications/NotificationData;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZIILjava/lang/Object;)Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationIconResId:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->programName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleWorking:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleDone:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textWorking:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textDone:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->progressInPercent:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->maxProgress:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->ongoing:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->autoCancel:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget v1, v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationID:I

    goto :goto_a

    :cond_a
    move/from16 v1, p11

    :goto_a
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lorg/catrobat/catroid/utils/notifications/NotificationData;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZI)Lorg/catrobat/catroid/utils/notifications/NotificationData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationIconResId:I

    return v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->autoCancel:Z

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationID:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->programName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleWorking:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleDone:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textWorking:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textDone:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->progressInPercent:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->maxProgress:I

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->ongoing:Z

    return v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZI)Lorg/catrobat/catroid/utils/notifications/NotificationData;
    .locals 16

    const-string v0, "programName"

    move-object/from16 v13, p2

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleWorking"

    move-object/from16 v14, p3

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleDone"

    move-object/from16 v15, p4

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textWorking"

    move-object/from16 v12, p5

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textDone"

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/catrobat/catroid/utils/notifications/NotificationData;

    move-object v1, v0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lorg/catrobat/catroid/utils/notifications/NotificationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;

    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationIconResId:I

    iget v1, p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationIconResId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->programName:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;->programName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleWorking:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleWorking:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleDone:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleDone:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textWorking:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textWorking:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textDone:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textDone:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->progressInPercent:I

    iget v1, p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;->progressInPercent:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->maxProgress:I

    iget v1, p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;->maxProgress:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->ongoing:Z

    iget-boolean v1, p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;->ongoing:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->autoCancel:Z

    iget-boolean v1, p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;->autoCancel:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationID:I

    iget p1, p1, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationID:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAutoCancel()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->autoCancel:Z

    return v0
.end method

.method public final getMaxProgress()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->maxProgress:I

    return v0
.end method

.method public final getNotificationID()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationID:I

    return v0
.end method

.method public final getNotificationIconResId()I
    .locals 1

    .line 33
    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationIconResId:I

    return v0
.end method

.method public final getOngoing()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->ongoing:Z

    return v0
.end method

.method public final getProgramName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->programName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgressInPercent()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->progressInPercent:I

    return v0
.end method

.method public final getTextDone()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textDone:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextWorking()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textWorking:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleDone()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleDone:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleWorking()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleWorking:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationIconResId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->programName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleWorking:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleDone:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textWorking:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textDone:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->progressInPercent:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->maxProgress:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->ongoing:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    move v1, v2

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->autoCancel:Z

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationID:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAutoCancel(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 42
    iput-boolean p1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->autoCancel:Z

    return-void
.end method

.method public final setMaxProgress(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 40
    iput p1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->maxProgress:I

    return-void
.end method

.method public final setNotificationIconResId(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 33
    iput p1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationIconResId:I

    return-void
.end method

.method public final setOngoing(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 41
    iput-boolean p1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->ongoing:Z

    return-void
.end method

.method public final setProgramName(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->programName:Ljava/lang/String;

    return-void
.end method

.method public final setProgressInPercent(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 39
    iput p1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->progressInPercent:I

    return-void
.end method

.method public final setTextDone(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textDone:Ljava/lang/String;

    return-void
.end method

.method public final setTextWorking(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textWorking:Ljava/lang/String;

    return-void
.end method

.method public final setTitleDone(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleDone:Ljava/lang/String;

    return-void
.end method

.method public final setTitleWorking(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleWorking:Ljava/lang/String;

    return-void
.end method

.method public final toNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->progressInPercent:I

    iget v2, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->maxProgress:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleWorking:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleDone:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->programName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "title":Ljava/lang/String;
    iget v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->progressInPercent:I

    iget v2, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->maxProgress:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textWorking:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textDone:Ljava/lang/String;

    .line 53
    .local v1, "text":Ljava/lang/String;
    :goto_1
    nop

    .line 61
    nop

    .line 53
    nop

    .line 60
    nop

    .line 53
    nop

    .line 59
    nop

    .line 53
    nop

    .line 58
    nop

    .line 53
    nop

    .line 57
    nop

    .line 53
    nop

    .line 56
    nop

    .line 53
    nop

    .line 55
    nop

    .line 53
    nop

    .line 54
    nop

    .line 53
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 55
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 56
    iget v3, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationIconResId:I

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 57
    iget v3, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->maxProgress:I

    iget v4, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->progressInPercent:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 58
    iget-boolean v3, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->ongoing:Z

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 59
    iget-boolean v3, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->autoCancel:Z

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 60
    invoke-virtual {v2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const-string v3, "NotificationCompat.Build\u2026\n                .build()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationData(notificationIconResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationIconResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", programName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->programName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titleWorking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleWorking:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titleDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->titleDone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textWorking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textWorking:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->textDone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", progressInPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->progressInPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->maxProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ongoing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->ongoing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoCancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->autoCancel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notificationID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/catroid/utils/notifications/NotificationData;->notificationID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
