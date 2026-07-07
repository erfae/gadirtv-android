.class final enum Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;
.super Ljava/lang/Enum;
.source "VOVMXAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/VOVMXLibrary/VOVMXAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DELAY_EVENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

.field public static final enum DATA_LOAD_BUFFER:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

.field public static final enum DATA_LOAD_COMPLETE:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

.field public static final enum DATA_LOAD_ERROR:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

.field public static final enum DATA_LOAD_STARTED:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

.field public static final enum PLAYBACK_REQUESTED:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 62
    new-instance v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    const-string v1, "PLAYBACK_REQUESTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->PLAYBACK_REQUESTED:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    .line 63
    new-instance v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    const-string v3, "DATA_LOAD_STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->DATA_LOAD_STARTED:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    .line 64
    new-instance v3, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    const-string v5, "DATA_LOAD_COMPLETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->DATA_LOAD_COMPLETE:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    .line 65
    new-instance v5, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    const-string v7, "DATA_LOAD_BUFFER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->DATA_LOAD_BUFFER:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    .line 66
    new-instance v7, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    const-string v9, "DATA_LOAD_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->DATA_LOAD_ERROR:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 61
    sput-object v9, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->$VALUES:[Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;
    .locals 1

    .line 61
    const-class v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    return-object p0
.end method

.method public static values()[Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;
    .locals 1

    .line 61
    sget-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->$VALUES:[Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    invoke-virtual {v0}, [Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    return-object v0
.end method
