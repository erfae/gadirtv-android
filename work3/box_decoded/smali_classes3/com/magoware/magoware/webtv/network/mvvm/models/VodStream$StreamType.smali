.class public final enum Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;
.super Ljava/lang/Enum;
.source "VodStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

.field public static final enum NORMAL:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

.field public static final enum VIDEO360:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

.field public static final enum VR:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 148
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->NORMAL:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    .line 149
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    const-string v3, "VIDEO360"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->VIDEO360:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    .line 150
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    const-string v5, "VR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->VR:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 147
    sput-object v5, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->$VALUES:[Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 147
    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    return-object p0
.end method

.method public static values()[Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;
    .locals 1

    .line 147
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->$VALUES:[Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    invoke-virtual {v0}, [Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    return-object v0
.end method
