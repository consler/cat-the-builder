.class synthetic Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter$1;
.super Ljava/lang/Object;
.source "ScratchJobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$DownloadState:[I

.field static final synthetic $SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 61
    invoke-static {}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->values()[Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$State:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->UNSCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$State:[I

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->SCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$State:[I

    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    :try_start_3
    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$State:[I

    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$State:[I

    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FINISHED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$State:[I

    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FAILED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    .line 76
    :goto_5
    invoke-static {}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->values()[Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$DownloadState:[I

    :try_start_6
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-virtual {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :goto_6
    :try_start_7
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$DownloadState:[I

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$DownloadState:[I

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->CANCELED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-virtual {v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    return-void
.end method
