.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_RENDER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field public static final enum VO_OSMP_RENDER_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field public static final enum VO_OSMP_RENDER_TYPE_NATIVE_SURFACE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field public static final enum VO_OSMP_RENDER_TYPE_NATIVE_WINDOW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field public static final enum VO_OSMP_RENDER_TYPE_OPENGLES:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 158
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    const-string v1, "VO_OSMP_RENDER_TYPE_NATIVE_WINDOW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_NATIVE_WINDOW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 160
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    const-string v4, "VO_OSMP_RENDER_TYPE_OPENGLES"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_OPENGLES:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 162
    new-instance v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    const-string v6, "VO_OSMP_RENDER_TYPE_NATIVE_SURFACE"

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-direct {v4, v6, v7, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_NATIVE_SURFACE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 165
    new-instance v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    const-string v9, "VO_OSMP_RENDER_TYPE_MAX"

    const/4 v10, -0x1

    invoke-direct {v6, v9, v5, v10}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    new-array v8, v8, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v7

    aput-object v6, v8, v5

    .line 155
    sput-object v8, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 167
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 181
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 183
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 184
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_RENDER_TYPE isn\'t match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;
    .locals 1

    .line 155
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;
    .locals 1

    .line 155
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->value:I

    return v0
.end method
