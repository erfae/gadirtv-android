.class public Lcom/magoware/magoware/webtv/util/Constants$ActionNames;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionNames"
.end annotation


# static fields
.field public static final BUY:Ljava/lang/String; = "buy"

.field public static final CAST:Ljava/lang/String; = "cast"

.field public static final COMING_SOON:Ljava/lang/String; = "coming_soon"

.field public static final EPISODES:Ljava/lang/String; = "episodes"

.field public static final PLAY:Ljava/lang/String; = "play"

.field public static final RECOMMENDED:Ljava/lang/String; = "recommended"

.field public static final RELATED:Ljava/lang/String; = "related"

.field public static final RENT:Ljava/lang/String; = "rent"

.field public static final SEASONS:Ljava/lang/String; = "seasons"

.field public static final SIMILAR:Ljava/lang/String; = "similar"

.field public static final THUMB_DOWN:Ljava/lang/String; = "thumbdown"

.field public static final THUMB_UP:Ljava/lang/String; = "thumbup"

.field public static final TRAILER:Ljava/lang/String; = "trailer"

.field public static final VIDEOS:Ljava/lang/String; = "videos"


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/util/Constants;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/util/Constants;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/Constants$ActionNames;->this$0:Lcom/magoware/magoware/webtv/util/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
