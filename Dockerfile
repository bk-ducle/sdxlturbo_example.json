# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# Could not resolve unknown registry node CLIPTextEncode - no aux_id or registry ID provided; skipping
# Could not resolve unknown registry node CheckpointLoaderSimple - no aux_id or registry ID provided; skipping
# Could not resolve unknown registry node KSamplerSelect - no aux_id or registry ID provided; skipping
# Could not resolve unknown registry node EmptyLatentImage - no aux_id or registry ID provided; skipping
# Could not resolve unknown registry node SDTurboScheduler - no aux_id or registry ID provided; skipping
# Could not resolve unknown registry node SamplerCustom - no aux_id or registry ID provided; skipping
# Could not resolve unknown registry node VAEDecode - no aux_id or registry ID provided; skipping
# Could not resolve unknown registry node CLIPTextEncode - no aux_id or registry ID provided; skipping
# Could not resolve unknown registry node SaveImage - no aux_id or registry ID provided; skipping

# download models into comfyui
RUN comfy model download --url https://huggingface.co/stabilityai/sdxl-turbo/resolve/main/sd_xl_turbo_1.0_fp16.safetensors --relative-path models/checkpoints --filename sd_xl_turbo_1.0_fp16.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
