.class public final enum Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;
.super Ljava/lang/Enum;
.source "voUnifyDecoderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voUnifyDecoderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VARSKEY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

.field public static final enum VARSKEY_ADAPTIVE_PLAYBACK:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

.field public static final enum VARSKEY_CONTEXT:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

.field public static final enum VARSKEY_DISABLE_FORCE_OPENGL:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

.field public static final enum VARSKEY_ENABLE_SEI_POST_PROCESS_VIDEO:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

.field public static final enum VARSKEY_MAX:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

.field public static final enum VARSKEY_RENDER_TYPE:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

.field public static final enum VARSKEY_VERIMATRIX:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

.field public static final enum VARSKEY_VIEW_CONTROL:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 86
    new-instance v0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    const-string v1, "VARSKEY_ADAPTIVE_PLAYBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_ADAPTIVE_PLAYBACK:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    .line 87
    new-instance v1, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    const-string v3, "VARSKEY_ENABLE_SEI_POST_PROCESS_VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_ENABLE_SEI_POST_PROCESS_VIDEO:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    .line 88
    new-instance v3, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    const-string v5, "VARSKEY_CONTEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_CONTEXT:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    .line 89
    new-instance v5, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    const-string v7, "VARSKEY_RENDER_TYPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_RENDER_TYPE:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    .line 90
    new-instance v7, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    const-string v9, "VARSKEY_VIEW_CONTROL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_VIEW_CONTROL:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    .line 91
    new-instance v9, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    const-string v11, "VARSKEY_VERIMATRIX"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_VERIMATRIX:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    .line 92
    new-instance v11, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    const-string v13, "VARSKEY_DISABLE_FORCE_OPENGL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_DISABLE_FORCE_OPENGL:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    .line 93
    new-instance v13, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    const-string v15, "VARSKEY_MAX"

    const/4 v14, 0x7

    const v12, 0x7fffffff

    invoke-direct {v13, v15, v14, v12}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_MAX:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 85
    sput-object v12, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->$VALUES:[Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;
    .locals 1

    .line 106
    invoke-static {}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->values()[Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 107
    invoke-static {}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->values()[Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 109
    :cond_0
    sget-object p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_MAX:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;
    .locals 1

    .line 85
    const-class v0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;
    .locals 1

    .line 85
    sget-object v0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->$VALUES:[Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->value:I

    return v0
.end method
