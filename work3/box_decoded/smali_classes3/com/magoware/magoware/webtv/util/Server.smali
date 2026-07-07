.class public Lcom/magoware/magoware/webtv/util/Server;
.super Ljava/lang/Object;
.source "Server.java"


# static fields
.field public static AppHost:Ljava/lang/String;

.field public static Log_Server:Ljava/lang/String;

.field public static currentServer:Ljava/lang/String;

.field public static imagesServer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    sget-object v0, Lcom/magoware/magoware/webtv/util/CustomServer;->currentServer:Ljava/lang/String;

    sput-object v0, Lcom/magoware/magoware/webtv/util/Server;->currentServer:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/magoware/magoware/webtv/util/CustomServer;->AppHost:Ljava/lang/String;

    sput-object v0, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/magoware/magoware/webtv/util/CustomServer;->imagesServer:Ljava/lang/String;

    sput-object v0, Lcom/magoware/magoware/webtv/util/Server;->imagesServer:Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/magoware/magoware/webtv/util/CustomServer;->Log_Server:Ljava/lang/String;

    sput-object v0, Lcom/magoware/magoware/webtv/util/Server;->Log_Server:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
